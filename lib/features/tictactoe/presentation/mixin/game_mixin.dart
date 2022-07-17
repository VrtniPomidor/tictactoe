import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';

import '../../data/tictactoe_constants.dart';

mixin GameMixin {
  // 1st player is O
  bool oTurn = true;
  bool imO = false;
  bool imPlayer = false;
  bool waitingOnPlayers = true;
  List<String> displayElement = ['', '', '', '', '', '', '', '', ''];
  List<int> winningIndexes = [];
  int filledBoxes = 0;
  VictoryType victoryType = VictoryType.progress;

  /// Call this every time data refreshes
  void setupBoard(List<List<int?>> grid, PlayerModel firstPlayer,
      PlayerModel secondPlayer) {
    waitingOnPlayers = false;
    _parseGrid(grid, firstPlayer.id, secondPlayer.id);
    _checkEntries();
    _setupPlayerTurn();
    _checkImPlaying(firstPlayer, secondPlayer);
  }

  void _checkEntries() {
    filledBoxes = displayElement.where((element) => element != '').length;
    victoryType = _checkWinner();
  }

  void _parseGrid(
      List<List<int?>> grid, int firstPlayerId, int secondPlayerId) {
    int index = 0;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        displayElement[index++] =
            getGridValueForValue(grid[i][j], firstPlayerId, secondPlayerId);
      }
    }
  }

  void _setupPlayerTurn() {
    oTurn = displayElement.where((element) => element != '').length.isEven;
  }

  void _checkImPlaying(PlayerModel firstPlayer, PlayerModel secondPlayer) {
    imPlayer = firstPlayer.isMe == true || secondPlayer.isMe == true;
    if (imPlayer) imO = firstPlayer.isMe == true;
  }

  bool isMyTurn() {
    return imPlayer && oTurn == imO;
  }

  String getGridValueForValue(
      int? value, int firstPlayerId, int secondPlayerId) {
    String gridValue = '';
    if (value == null) return '';
    if (value == firstPlayerId) return 'O';
    if (value == secondPlayerId) return 'X';
    return gridValue;
  }

  void tapped(int index) {
    if (oTurn && displayElement[index] == '') {
      displayElement[index] = 'O';
      filledBoxes++;
    } else if (!oTurn && displayElement[index] == '') {
      displayElement[index] = 'X';
      filledBoxes++;
    }

    oTurn = !oTurn;
    victoryType = _checkWinner();
  }

  VictoryType _checkWinner() {
    // Checking rows
    if (displayElement[0] == displayElement[1] &&
        displayElement[0] == displayElement[2] &&
        displayElement[0] != '') {
      winningIndexes = [0, 1, 2];
      return findWinner(displayElement[0]);
    }
    if (displayElement[3] == displayElement[4] &&
        displayElement[3] == displayElement[5] &&
        displayElement[3] != '') {
      winningIndexes = [3, 4, 5];
      return findWinner(displayElement[3]);
    }
    if (displayElement[6] == displayElement[7] &&
        displayElement[6] == displayElement[8] &&
        displayElement[6] != '') {
      winningIndexes = [6, 7, 8];
      return findWinner(displayElement[6]);
    }

    // Checking Column
    if (displayElement[0] == displayElement[3] &&
        displayElement[0] == displayElement[6] &&
        displayElement[0] != '') {
      winningIndexes = [0, 3, 6];
      return findWinner(displayElement[0]);
    }
    if (displayElement[1] == displayElement[4] &&
        displayElement[1] == displayElement[7] &&
        displayElement[1] != '') {
      winningIndexes = [1, 4, 7];
      return findWinner(displayElement[1]);
    }
    if (displayElement[2] == displayElement[5] &&
        displayElement[2] == displayElement[8] &&
        displayElement[2] != '') {
      winningIndexes = [2, 5, 8];
      return findWinner(displayElement[2]);
    }

    // Checking Diagonal
    if (displayElement[0] == displayElement[4] &&
        displayElement[0] == displayElement[8] &&
        displayElement[0] != '') {
      winningIndexes = [0, 4, 8];
      return findWinner(displayElement[0]);
    }
    if (displayElement[2] == displayElement[4] &&
        displayElement[2] == displayElement[6] &&
        displayElement[2] != '') {
      winningIndexes = [2, 4, 6];
      return findWinner(displayElement[2]);
    } else if (filledBoxes == 9) {
      return VictoryType.draw;
    }
    return VictoryType.progress;
  }

  VictoryType findWinner(String char) {
    return char == 'O' ? VictoryType.winO : VictoryType.winX;
  }

  List<int> getColumnAndRowFromIndex({required int index}) {
    final row = index ~/ TictactoeConstants.columns;
    final column = index % TictactoeConstants.columns;
    return [row, column];
  }
}

enum VictoryType {
  draw,
  winO,
  winX,
  progress,
}
