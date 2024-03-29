import 'package:auto_route/annotations.dart';
import 'package:tictactoe/features/home/games/presentation/page/games_tab_page.dart';
import 'package:tictactoe/features/home/players/presentation/page/players_tab_page.dart';
import 'package:tictactoe/features/home/presentation/page/home_page.dart';

import '../../auth/presentation/pages/login_page.dart';
import '../../auth/presentation/pages/register_page.dart';
import '../../splash/presentation/page/splash_page.dart';
import '../../tictactoe/presentation/page/tictactoe_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: HomePage, children: [
      AutoRoute(page: GamesTabPage, initial: true),
      AutoRoute(page: PlayersTabPage),
    ]),
    AutoRoute(path: 'tictactoe/:id', page: TicTacToePage),
  ],
)
class $AppRouter {}
