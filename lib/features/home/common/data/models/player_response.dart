import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_response.freezed.dart';
part 'player_response.g.dart';

@freezed
class PlayerResponse with _$PlayerResponse {
  const factory PlayerResponse({
    required int id,
    required String username,
    @Default(0) @JsonKey(name: "game_count") int gameCount,
    @Default(0) @JsonKey(name: "win_rate") double winRate,
  }) = _PlayerResponse;

  factory PlayerResponse.fromJson(Map<String, dynamic> json) =>
      _$PlayerResponseFromJson(json);
}
