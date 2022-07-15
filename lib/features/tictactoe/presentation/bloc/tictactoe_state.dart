part of 'tictactoe_cubit.dart';

@freezed
class TictactoeState with _$TictactoeState {
  const factory TictactoeState.initial({
    GameModel? gameModel,
    @Default(['', '', '', '', '', '', '', '', '']) List<String> displayElement,
    @Default(true) bool isBoardBlocked,
    @Default(false) bool isLoading,
    @Default(false) bool showErrorScreen,
    @Default('') String error,
  }) = _Initial;
}
