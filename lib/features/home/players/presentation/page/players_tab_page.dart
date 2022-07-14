import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/features/home/players/presentation/widgets/players_page_delegate.dart';

import '../../../../common/widgets/snackbar_widgets.dart';
import '../bloc/players_cubit.dart';

class PlayersTabPage extends StatelessWidget {
  const PlayersTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayersCubit, PlayersState>(listener: (context, state) {
      if (state.error.isNotEmpty) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
            snackBarWhenFailure(snackBarFailureText: state.error));
      }
    }, builder: (context, state) {
      return const PlayersPageDelegate();
    });
  }
}
