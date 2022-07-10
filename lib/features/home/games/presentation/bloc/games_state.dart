part of 'games_cubit.dart';

@freezed
class GamesState with _$GamesState {
  const factory GamesState.initial({
    @Default([]) List<GameModel> games,
    @Default(false) bool isLoading,
    @Default('') String error,
  }) = _Initial;
}
