import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/user_model.dart';
import '../../domain/repositories/login_repository.dart';
import '../datasources/login_local_datasource.dart';
import '../datasources/login_remote_datasource.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource remoteDataSource;
  final LoginLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  LoginRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, UserModel>> loginUser({
    required String username,
    required String password,
  }) async {
    bool isConnected = await networkInfo.isConnected();
    if (isConnected) {
      try {
        final loginResponse =
            await remoteDataSource.loginUser(username, password);
        var userModel = UserModel(
          username: loginResponse.username,
          id: loginResponse.id,
        );
        await localDataSource.cacheToken(loginResponse.token);
        await localDataSource.cacheUser(userModel);
        return Right(userModel);
      } on ServerException catch (e) {
        return Left(Failure.httpExternalException(message: e.message));
      }
    } else {
      return const Left(Failure.noConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, String>> fetchCachedToken() async {
    try {
      final token = await localDataSource.getToken();
      return Right(token);
    } on TokenNotFoundException {
      return const Left(Failure.cacheFailure());
    }
  }

  @override
  Future<Either<Failure, UserModel>> fetchCachedUser() async {
    try {
      final token = await localDataSource.getUser();
      return Right(token);
    } on TokenNotFoundException {
      return const Left(Failure.cacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    try {
      await remoteDataSource.logoutUser();
      return const Right(true);
    } on TokenNotFoundException {
      return const Left(Failure.cacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> registerUser(
      {required String username, required String password}) async {
    bool isConnected = await networkInfo.isConnected();
    if (isConnected) {
      try {
        await remoteDataSource.registerUser(username, password);
        return const Right(true);
      } on ServerException catch (e) {
        return Left(Failure.httpExternalException(message: e.message));
      }
    } else {
      return const Left(Failure.noConnectionFailure());
    }
  }
}
