import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/di/di_init.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';
import 'package:tictactoe/features/common/widgets/app_divider.dart';
import 'package:tictactoe/features/common/widgets/loading_indicator.dart';
import 'package:tictactoe/features/tictactoe/presentation/bloc/tictactoe_cubit.dart';
import 'package:tictactoe/features/tictactoe/presentation/widgets/game_players.dart';
import 'package:tictactoe/features/tictactoe/presentation/widgets/playing_as.dart';

import '../../../common/widgets/empty_view.dart';
import '../../../common/widgets/snackbar_widgets.dart';
import '../widgets/field.dart';

class TicTacToePage extends StatelessWidget {
  final int? id;

  const TicTacToePage({Key? key, @PathParam('id') this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TictactoeCubit>()..setupId(id: id),
      child: Scaffold(
          appBar: AppBar(title: const Text('TicTacToe')),
          body: const TicTacToeBody()),
    );
  }
}

class TicTacToeBody extends StatelessWidget {
  final int? id;

  const TicTacToeBody({Key? key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TictactoeCubit, TictactoeState>(
        listener: (context, state) {
      if (state.error.isNotEmpty) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
            snackBarWhenFailure(snackBarFailureText: state.error));
      }
    }, builder: (context, state) {
      if (state.isLoading) return const Center(child: LoadingIndicator());
      if (state.error.isNotEmpty) {
        return Center(
            child: EmptyView(
          emptyMessage: 'Something went wrong. Please try again.',
          onPressed: () => context.read<TictactoeCubit>().getGame(),
        ));
      }
      return SingleChildScrollView(
        child: Padding(
          padding: AppMargins.defaultMargins,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GamePlayers(
                winner: state.gameModel?.winner,
                firstPlayer: state.gameModel?.firstPlayer,
                secondPlayer: state.gameModel?.secondPlayer,
              ),
              AppDivider.vertical(),
              const PlayingAs(type: 'O'),
              AppDivider.vertical(),
              AppDivider.vertical(),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                // generate the widgets that will display the board
                children: List.generate(9, (index) {
                  return Field(
                      idx: index,
                      onTap: state.isBoardBlocked
                          ? null
                          : (index) =>
                              context.read<TictactoeCubit>().tapped(index),
                      playerSymbol: state.displayElement[index]);
                }),
              ),
            ],
          ),
        ),
      );
    });
  }
}
