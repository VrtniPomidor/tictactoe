import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/common/data/models/player_response.dart';

part 'create_game_request.freezed.dart';
part 'create_game_request.g.dart';

@freezed
class CreateGameRequest with _$CreateGameRequest {
  const factory CreateGameRequest({
    required PlayerResponse? winner,
    @JsonKey(name: 'first_player') PlayerResponse? firstPlayer,
    @JsonKey(name: 'second_player') PlayerResponse? secondPlayer,
  }) = _CreateGameRequest;

  factory CreateGameRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGameRequestFromJson(json);
}
