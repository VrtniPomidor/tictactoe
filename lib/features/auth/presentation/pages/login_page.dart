import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/di/di_init.dart';

import '../blocs/user_login/login_cubit.dart';
import '../forms/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: AppForm.login(),
      ),
    );
  }
}
