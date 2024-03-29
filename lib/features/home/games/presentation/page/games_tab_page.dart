import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/di/di_init.dart';
import 'package:tictactoe/features/common/router/app_router.gr.dart';
import 'package:tictactoe/features/home/games/presentation/bloc/games_cubit.dart';
import 'package:tictactoe/features/home/games/presentation/widgets/games_page_delegate.dart';
import 'package:tictactoe/features/home/games/presentation/widgets/status_dropdown.dart';

import '../../../../common/widgets/snackbar_widgets.dart';

class GamesTabPage extends StatelessWidget {
  const GamesTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getIt<AppRouter>().push(TicTacToeRoute());
        },
        child: const Icon(Icons.add),
      ),
      body: BlocConsumer<GamesCubit, GamesState>(
          listener: (context, state) {
            if (state.error.isNotEmpty) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                  snackBarWhenFailure(snackBarFailureText: state.error));
            }
          },
          buildWhen: (previousState, state) =>
              state.filterModel != previousState.filterModel,
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: const [
                StatusDropdown(),
                Expanded(child: GamesPageDelegate()),
              ],
            );
          }),
    );
  }
}
