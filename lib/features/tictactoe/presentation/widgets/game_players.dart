import 'package:flutter/material.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';

import '../../../common/presentation/style/styles.dart';

class GamePlayers extends StatelessWidget {
  final PlayerModel? winner;
  final PlayerModel? firstPlayer;
  final PlayerModel? secondPlayer;

  const GamePlayers(
      {Key? key, this.firstPlayer, this.secondPlayer, this.winner})
      : super(key: key);

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
                    firstPlayer != null
                        ? '${firstPlayer!.username} (playing O)'
                        : 'Waiting for player 1...',
                    style: titleTextStyle,
                  ),
                  Text(
                    firstPlayer != null && winner != null
                        ? winner!.id == firstPlayer!.id
                            ? 'winner'
                            : ''
                        : '',
                    style: titleTextStyle,
                  ),
                ],
              )),
          Padding(
              padding: AppMargins.defaultMargins,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    secondPlayer != null
                        ? '${secondPlayer!.username} (playing X)'
                        : 'Waiting for player 2...',
                    style: titleTextStyle,
                  ),
                  Text(
                    secondPlayer != null && winner != null
                        ? winner!.id == secondPlayer!.id
                            ? 'winner'
                            : ''
                        : '',
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
