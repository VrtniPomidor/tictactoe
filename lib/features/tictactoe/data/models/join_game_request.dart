import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/common/data/models/player_response.dart';

part 'join_game_request.freezed.dart';
part 'join_game_request.g.dart';

@freezed
class JoinGameRequest with _$JoinGameRequest {
  const factory JoinGameRequest({
    PlayerResponse? winner,
    @JsonKey(name: 'first_player') PlayerResponse? firstPlayer,
    @JsonKey(name: 'second_player') PlayerResponse? secondPlayer,
  }) = _JoinGameRequest;

  factory JoinGameRequest.fromJson(Map<String, dynamic> json) =>
      _$JoinGameRequestFromJson(json);
}
