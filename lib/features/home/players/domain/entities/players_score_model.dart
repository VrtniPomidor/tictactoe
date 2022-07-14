import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../games/domain/entities/game_model.dart';

part 'players_score_model.freezed.dart';

@freezed
class PlayersWrapperModel with _$PlayersWrapperModel {
  factory PlayersWrapperModel({
    required int count,
    required List<PlayerScoreModel> results,
  }) = _PlayersWrapperModel;
}

@freezed
class PlayerScoreModel with _$PlayerScoreModel {
  factory PlayerScoreModel({
    required PlayerModel playerModel,
    @Default(0) int gameCount,
    @Default('0%') String winRate,
  }) = _PlayerScoreModel;
}
