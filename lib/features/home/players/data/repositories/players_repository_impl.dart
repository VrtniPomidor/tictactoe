import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/failure.dart';
import 'package:tictactoe/features/auth/domain/repositories/login_repository.dart';
import 'package:tictactoe/features/home/players/domain/repositories/players_repository.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/network/network_info.dart';
import '../../domain/entities/players_score_model.dart';
import '../datasources/players_remote_datasource.dart';
import '../mapper/games_model_mapper.dart';

@Injectable(as: PlayersRepository)
class PlayersRepositoryImpl implements PlayersRepository {
  final PlayersRemoteDataSource remoteDataSource;
  final LoginRepository loginRepository;
  final NetworkInfo networkInfo;

  PlayersRepositoryImpl({
    required this.remoteDataSource,
    required this.loginRepository,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, PlayersWrapperModel>> getPlayers({
    int offset = 0,
  }) async {
    bool isConnected = await networkInfo.isConnected();
    if (isConnected) {
      try {
        var result = await remoteDataSource.getPlayers(offset: offset);
        var user = await loginRepository.fetchCachedUser();
        return user.fold((l) => Right(result.mapToPlayersWrapperModel()),
            (r) => Right(result.mapToPlayersWrapperModel(userModel: r)));
      } on ServerException catch (e) {
        return Left(Failure.httpExternalException(message: e.message));
      }
    } else {
      return const Left(Failure.noConnectionFailure());
    }
  }
}
