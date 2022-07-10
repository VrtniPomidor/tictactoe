// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../auth/presentation/pages/login_page.dart' as _i2;
import '../../auth/presentation/pages/register_page.dart' as _i3;
import '../../home/games/presentation/page/games_tab_page.dart' as _i5;
import '../../home/players/presentation/page/players_tab_page.dart' as _i6;
import '../../home/presentation/page/home_page.dart' as _i4;
import '../../splash/presentation/page/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LoginRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RegisterPage());
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    GamesTabRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.GamesTabPage());
    },
    PlayersTabRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PlayersTabPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashRoute.name, path: '/'),
        _i7.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i7.RouteConfig(RegisterRoute.name, path: '/register-page'),
        _i7.RouteConfig(HomeRoute.name, path: '/home-page', children: [
          _i7.RouteConfig(GamesTabRoute.name, path: '', parent: HomeRoute.name),
          _i7.RouteConfig(PlayersTabRoute.name,
              path: 'players-tab-page', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i7.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register-page');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home-page', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.GamesTabPage]
class GamesTabRoute extends _i7.PageRouteInfo<void> {
  const GamesTabRoute() : super(GamesTabRoute.name, path: '');

  static const String name = 'GamesTabRoute';
}

/// generated route for
/// [_i6.PlayersTabPage]
class PlayersTabRoute extends _i7.PageRouteInfo<void> {
  const PlayersTabRoute()
      : super(PlayersTabRoute.name, path: 'players-tab-page');

  static const String name = 'PlayersTabRoute';
}
