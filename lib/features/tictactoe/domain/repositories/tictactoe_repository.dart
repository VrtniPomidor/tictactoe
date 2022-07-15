import 'package:dartz/dartz.dart';
import 'package:tictactoe/core/error/failure.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';

abstract class TictactoeRepository {
  Future<Either<Failure, GameModel>> getGame({required int id});
}
