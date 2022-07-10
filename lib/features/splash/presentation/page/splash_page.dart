import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/di/di_init.dart';
import 'package:tictactoe/features/common/presentation/blocs/auth_cubit.dart';
import 'package:tictactoe/features/common/widgets/loading_indicator.dart';

import '../../../common/router/app_router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (_, state) {
        state.whenOrNull(
          showLogin: () => router.replace(const LoginRoute()),
          showHome: () => router.replace(const HomeRoute()),
        );
      },
      builder: (context, state) => const Scaffold(body: LoadingIndicator()),
    );
  }
}
