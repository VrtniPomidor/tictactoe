part of 'tictactoe_cubit.dart';

@freezed
class TictactoeState with _$TictactoeState {
  const factory TictactoeState.initial({
    GameModel? gameModel,
    @Default(['', '', '', '', '', '', '', '', '']) List<String> displayElement,
    @Default([]) List<int> winner,
    @Default(true) bool isBoardBlocked,
    @Default(false) bool isLoading,
    @Default(false) bool onMoveLoading,
    @Default(false) bool showErrorScreen,
    @Default(false) bool imPlaying,
    @Default(false) bool isMyTurn,
    @Default(false) bool imO,
    @Default(false) bool oTurn,
    @Default(false) bool showJoinGameButton,
    @Default(false) bool joinGameButtonBusy,
    @Default('') String error,
    @Default(VictoryType.progress) VictoryType victoryType,
  }) = _Initial;
}
