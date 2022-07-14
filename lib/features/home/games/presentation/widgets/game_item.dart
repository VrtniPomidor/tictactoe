import 'package:flutter/material.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';

import '../../domain/entities/game_model.dart';

class GameItem extends StatelessWidget {
  final GameModel gameModel;

  const GameItem({Key? key, required this.gameModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: AppMargins.contentMargins,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Game: ${gameModel.id}'),
            Text(
              'Player 1: ${gameModel.playerOneName}',
              textAlign: TextAlign.center,
            ),
            Text(
              'Player 2: ${gameModel.playerTwoName}',
              textAlign: TextAlign.center,
            ),
            Text('Created: ${gameModel.createdTime}'),
            Text('Status: ${gameModel.status}'),
          ],
        ),
      ),
    );
  }
}
