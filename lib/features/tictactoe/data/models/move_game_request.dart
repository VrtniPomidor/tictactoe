import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_game_request.freezed.dart';
part 'move_game_request.g.dart';

@freezed
class MoveGameRequest with _$MoveGameRequest {
  const factory MoveGameRequest({
    required int row,
    @JsonKey(name: 'col') required int column,
  }) = _MoveGameRequest;

  factory MoveGameRequest.fromJson(Map<String, dynamic> json) =>
      _$MoveGameRequestFromJson(json);
}
