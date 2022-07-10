import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_model.freezed.dart';

@freezed
class GamesWrapperModel with _$GamesWrapperModel {
  factory GamesWrapperModel({
    required int count,
    required List<GameModel> results,
  }) = _GamesWrapperModel;
}

@freezed
class GameModel with _$GameModel {
  factory GameModel({
    required int id,
    required PlayerModel? winner,
    required PlayerModel? firstPlayer,
    required PlayerModel? secondPlayer,
    required DateTime created,
    required String status,
  }) = _GameModel;
}

@freezed
class PlayerModel with _$PlayerModel {
  factory PlayerModel({
    required int id,
    required String username,
  }) = _PlayerModel;
}
