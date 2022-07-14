import 'package:flutter/material.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';

import '../../domain/entities/players_score_model.dart';

class PlayerItem extends StatelessWidget {
  final PlayerScoreModel playerScoreModel;

  const PlayerItem({Key? key, required this.playerScoreModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: AppMargins.contentMargins,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Player: ${playerScoreModel.playerModel.username}',
              textAlign: TextAlign.center,
            ),
            Text('Games: ${playerScoreModel.gameCount}'),
            Text('Win rate: ${playerScoreModel.winRate}'),
          ],
        ),
      ),
    );
  }
}
