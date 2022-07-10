import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/user_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, UserModel>> loginUser(
      {required String username, required String password});

  Future<Either<Failure, bool>> registerUser(
      {required String username, required String password});

  Future<Either<Failure, String>> fetchCachedToken();

  Future<Either<Failure, bool>> signOut();
}
