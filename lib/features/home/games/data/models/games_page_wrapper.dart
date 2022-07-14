import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/features/home/games/data/models/games_response.dart';

part 'games_page_wrapper.freezed.dart';
part 'games_page_wrapper.g.dart';

@freezed
class GamesPageWrapper with _$GamesPageWrapper {
  factory GamesPageWrapper({
    required int count,
    required List<GameResponse> results,
  }) = _GamesPageWrapper;

  factory GamesPageWrapper.fromJson(Map<String, dynamic> json) =>
      _$GamesPageWrapperFromJson(json);
}
