import 'package:flutter/material.dart';
import 'package:tictactoe/features/common/widgets/app_divider.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';

import '../../../common/presentation/style/styles.dart';

class GamePlayers extends StatelessWidget {
  final GameModel? gameModel;

  const GamePlayers({Key? key, required this.gameModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: AppMargins.defaultMargins,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  gameModel?.firstPlayer != null
                      ? '${gameModel?.playerOneName}'
                      : 'Waiting for player 1...',
                  style: titleTextStyle,
                ),
                Text(
                  gameModel?.firstPlayer != null ? 'Playing O' : '',
                  style: titleTextStyle,
                ),
              ],
            ),
          ),
          AppDivider.horizontal(),
          Padding(
              padding: AppMargins.defaultMargins,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    gameModel?.secondPlayer != null
                        ? '${gameModel?.playerTwoName}'
                        : 'Waiting for player 2...',
                    style: titleTextStyle,
                  ),
                  Text(
                    gameModel?.secondPlayer != null ? 'Playing X' : '',
                    style: titleTextStyle,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
