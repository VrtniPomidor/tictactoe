import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/features/common/widgets/app_divider.dart';
import 'package:tictactoe/features/common/widgets/loading_indicator.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';
import 'package:tictactoe/features/home/games/presentation/bloc/games_cubit.dart';

import '../../../../common/widgets/snackbar_widgets.dart';

class GamesTabPage extends StatelessWidget {
  const GamesTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GamesCubit, GamesState>(listener: (context, state) {
      if (state.error.isNotEmpty) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
            snackBarWhenFailure(snackBarFailureText: state.error));
      }
    }, builder: (context, state) {
      return state.isLoading
          ? const LoadingIndicator()
          : ListView.separated(
              itemCount: state.games.length,
              separatorBuilder: (context, index) => AppDivider.vertical(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: GameItem(gameModel: state.games[index]),
              ),
            );
    });
  }
}

class GameItem extends StatelessWidget {
  final GameModel gameModel;

  const GameItem({Key? key, required this.gameModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Game: ${gameModel.id}'),
        Row(
          children: [
            Expanded(
                child: Text(
              'Winner: ${gameModel.winner?.username}',
              textAlign: TextAlign.center,
            )),
            Expanded(
                child: Text(
              'Player 1: ${gameModel.firstPlayer?.username}',
              textAlign: TextAlign.center,
            )),
            Expanded(
                child: Text(
              'Player 2: ${gameModel.secondPlayer?.username}',
              textAlign: TextAlign.center,
            )),
          ],
        ),
        Text('Created: ${gameModel.created}'),
        Text('Status: ${gameModel.status}'),
      ],
    );
  }
}
