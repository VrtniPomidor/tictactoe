import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/widgets/auth_text_field.dart';
import '../blocs/user_login/login_cubit.dart';

class UsernameInputField extends StatelessWidget {
  const UsernameInputField({Key? key, required this.state}) : super(key: key);
  final LoginState state;

  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      hint: 'Username',
      keyboardType: TextInputType.emailAddress,
      error: state.username.error?.name,
      onChanged: (email) => context.read<LoginCubit>().usernameChanged(email),
    );
  }
}

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({Key? key, required this.state}) : super(key: key);
  final LoginState state;

  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      padding: const EdgeInsets.symmetric(vertical: 20),
      hint: 'Password',
      isPasswordField: true,
      keyboardType: TextInputType.text,
      error: state.password.error?.name,
      onChanged: (password) =>
          context.read<LoginCubit>().passwordChanged(password),
    );
  }
}
