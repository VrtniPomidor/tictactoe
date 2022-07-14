import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/di/di_init.dart';
import 'package:tictactoe/features/common/widgets/primary_button.dart';

import '../../../common/router/app_router.gr.dart';
import '../../../common/widgets/text_inkwell_button.dart';
import '../blocs/user_login/login_cubit.dart';

class LoginButton extends StatelessWidget {
  final bool isBusy;

  const LoginButton({Key? key, this.isBusy = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: PrimaryButton(
          text: 'Sign in',
          isBusy: isBusy,
          onPressed: () => context.read<LoginCubit>().logInWithCredentials(),
        ));
  }
}

class RegisterButton extends StatelessWidget {
  final bool isBusy;

  const RegisterButton({Key? key, this.isBusy = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: PrimaryButton(
          text: 'Register',
          isBusy: isBusy,
          onPressed: () => context.read<LoginCubit>().register(),
        ));
  }
}

class RegisterTextButton extends StatelessWidget {
  const RegisterTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInkWellButton(
      text: 'Don\'t have an account yet? Click here to create one',
      onPressed: navigateToSignUp,
    );
  }

  void navigateToSignUp() {
    getIt<AppRouter>().replace(const RegisterRoute());
  }
}

class SignInTextButton extends StatelessWidget {
  const SignInTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInkWellButton(
      text: 'Already have an account? Click here to sign in',
      onPressed: navigateToSignIn,
    );
  }

  void navigateToSignIn() {
    getIt<AppRouter>().replace(const LoginRoute());
  }
}
