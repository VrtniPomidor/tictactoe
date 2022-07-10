import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/failure.dart';
import 'package:tictactoe/features/home/games/data/datasources/games_remote_datasource.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/network/network_info.dart';
import '../../domain/repositories/games_repository.dart';
import '../mapper/games_model_mapper.dart';

@Injectable(as: GamesRepository)
class GamesRepositoryImpl implements GamesRepository {
  final GamesRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  GamesRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, GamesWrapperModel>> getGames({
    int offset = 0,
    String? status,
  }) async {
    bool isConnected = await networkInfo.isConnected();
    if (isConnected) {
      try {
        var result = await remoteDataSource.getGames(status: null, offset: 0);
        return Right(result.mapToGamesModel());
      } on ServerException catch (e) {
        return Left(Failure.httpExternalException(message: e.message));
      }
    } else {
      return const Left(Failure.noConnectionFailure());
    }
  }
}
