import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../entities/game_model.dart';

abstract class GamesRepository {
  Future<Either<Failure, GamesWrapperModel>> getGames({
    required int offset,
    required String? status,
  });
}
