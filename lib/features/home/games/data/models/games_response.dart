import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/features/home/common/data/models/player_response.dart';

part 'games_response.freezed.dart';
part 'games_response.g.dart';

@freezed
class GameResponse with _$GameResponse {
  const factory GameResponse({
    required int id,
    required PlayerResponse? winner,
    @JsonKey(name: 'first_player') required PlayerResponse? firstPlayer,
    @JsonKey(name: 'second_player')required PlayerResponse? secondPlayer,
    required DateTime created,
    required String status,
  }) = _GameResponse;

  factory GameResponse.fromJson(Map<String, dynamic> json) =>
      _$GameResponseFromJson(json);
}
