import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../entities/players_score_model.dart';

abstract class PlayersRepository {
  Future<Either<Failure, PlayersWrapperModel>> getPlayers({
    required int offset,
  });
}
