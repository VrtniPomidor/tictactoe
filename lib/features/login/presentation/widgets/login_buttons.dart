import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/features/common/widgets/primary_button.dart';

import '../../../common/widgets/text_button.dart';
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

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInkWellButton(
      text: 'Don\'t have an account yet? Click here to create one',
      onPressed: navigateToSignUp,
    );
  }

  void navigateToSignUp() {}
}
