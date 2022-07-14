part of 'players_cubit.dart';

@freezed
class PlayersState with _$PlayersState {
  const factory PlayersState.initial({
    @Default('') String error,
  }) = _Initial;
}
