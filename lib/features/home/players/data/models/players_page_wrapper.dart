import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/data/models/player_response.dart';

part 'players_page_wrapper.freezed.dart';
part 'players_page_wrapper.g.dart';

@freezed
class PlayersPageWrapper with _$PlayersPageWrapper {
  factory PlayersPageWrapper({
    required int count,
    required List<PlayerResponse> results,
  }) = _PlayersPageWrapper;

  factory PlayersPageWrapper.fromJson(Map<String, dynamic> json) =>
      _$PlayersPageWrapperFromJson(json);
}