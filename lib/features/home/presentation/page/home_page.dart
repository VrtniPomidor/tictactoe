import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/di/di_init.dart';

import '../../../common/presentation/blocs/auth_cubit.dart';
import '../../../common/router/app_router.gr.dart';
import '../../games/presentation/bloc/games_cubit.dart';
import '../../players/presentation/bloc/players_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => getIt<GamesCubit>(),
      ),
      BlocProvider(
        create: (context) => getIt<PlayersCubit>(),
      ),
    ], child: const HomePageBody());
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TicTacToe'), actions: [
        IconButton(
          tooltip: 'Logout',
          onPressed: logOut,
          icon: const Icon(Icons.logout),
        )
      ]),
      body: AutoTabsScaffold(
        routes: const [
          GamesTabRoute(),
          PlayersTabRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'Games',
                icon: Icon(Icons.gamepad),
              ),
              BottomNavigationBarItem(
                label: 'Players',
                icon: Icon(Icons.people),
              ),
            ],
          );
        },
      ),
    );
  }

  void logOut() {
    getIt<AuthCubit>().logout();
  }
}
