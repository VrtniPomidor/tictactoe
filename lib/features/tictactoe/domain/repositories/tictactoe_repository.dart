import 'package:dartz/dartz.dart';
import 'package:tictactoe/core/error/failure.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';

abstract class TictactoeRepository {
  Future<Either<Failure, GameModel>> getGame({required int id});

  Future<Either<Failure, GameModel>> createGame();

  Future<Either<Failure, void>> joinGame({required int id});

  Future<Either<Failure, void>> makeMove({
    required int id,
    required int row,
    required int column,
  });
}
