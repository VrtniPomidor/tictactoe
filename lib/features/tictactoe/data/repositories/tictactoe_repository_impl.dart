import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/failure.dart';
import 'package:tictactoe/core/network/network_info.dart';
import 'package:tictactoe/features/auth/domain/repositories/login_repository.dart';
import 'package:tictactoe/features/home/games/data/mapper/games_model_mapper.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';
import 'package:tictactoe/features/tictactoe/data/datasources/tictactoe_datasource.dart';

import '../../../../core/error/exceptions.dart';
import '../../domain/repositories/tictactoe_repository.dart';

@Injectable(as: TictactoeRepository)
class TictactoeRepositoryImpl implements TictactoeRepository {
  final NetworkInfo networkInfo;
  final LoginRepository loginRepository;
  final TictactoeRemoteDataSource remoteDataSource;

  const TictactoeRepositoryImpl(
      this.networkInfo, this.remoteDataSource, this.loginRepository);

  @override
  Future<Either<Failure, GameModel>> getGame({required int id}) async {
    bool isConnected = await networkInfo.isConnected();
    if (isConnected) {
      try {
        var result = await remoteDataSource.getGame(id: id);
        var user = await loginRepository.fetchCachedUser();
        return user.fold((l) => Right(result.mapToGamesModel()),
            (r) => Right(result.mapToGamesModel(userModel: r)));
      } on ServerException catch (e) {
        return Left(Failure.httpExternalException(message: e.message));
      }
    } else {
      return const Left(Failure.noConnectionFailure());
    }
  }
}
