import 'package:flutter/material.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';
import 'package:tictactoe/features/tictactoe/presentation/mixin/game_mixin.dart';

class PlayerTurn extends StatelessWidget {
  final VictoryType victoryType;
  final String type;
  final bool oTurn;

  const PlayerTurn({
    Key? key,
    required this.type,
    this.oTurn = false,
    required this.victoryType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(_getStatusString(),
        style: titleTextStyle.copyWith(fontSize: 24));
  }

  String _getStatusString() {
    switch (victoryType) {
      case VictoryType.progress:
        return '$type turn';
      case VictoryType.draw:
        return 'Draw';
      case VictoryType.winO:
        return 'O wins';
      case VictoryType.winX:
        return 'X wins';
      default:
        return '';
    }
  }
}
