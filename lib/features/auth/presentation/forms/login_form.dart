import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tictactoe/core/di/di_init.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';
import 'package:tictactoe/features/common/router/app_router.gr.dart';

import '../../../common/widgets/app_divider.dart';
import '../../../common/widgets/snackbar_widgets.dart';
import '../blocs/user_login/login_cubit.dart';
import '../widgets/login_buttons.dart';
import '../widgets/login_input_fields.dart';

enum FormType { login, register }

class AppForm extends StatelessWidget {
  final FormType formType;

  const AppForm._({Key? key, required this.formType}) : super(key: key);

  factory AppForm.login() => const AppForm._(formType: FormType.login);

  factory AppForm.register() => const AppForm._(formType: FormType.register);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (p, c) => p.status != c.status,
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
              snackBarWhenFailure(snackBarFailureText: state.exceptionError));
        } else if (state.status.isSubmissionSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(snackBarWhenSuccess());
          if (formType.isRegister) {
            getIt<AppRouter>().replace(const LoginRoute());
          } else if (formType.isLogin) {
            getIt<AppRouter>().replace(const HomeRoute());
          }
        }
      },
      builder: (context, state) => Center(
        child: SingleChildScrollView(
          padding: AppMargins.largeMargins,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UsernameInputField(state: state),
              AppDivider.vertical(),
              PasswordInputField(state: state),
              AppDivider.vertical(),
              if (formType.isLogin)
                LoginButton(
                  isBusy: state.status.isSubmissionInProgress,
                ),
              if (formType.isRegister)
                RegisterButton(
                  isBusy: state.status.isSubmissionInProgress,
                ),
              AppDivider.vertical(),
              if (formType.isLogin) const RegisterTextButton(),
              if (formType.isRegister) const SignInTextButton(),
            ],
          ),
        ),
      ),
    );
  }
}

extension FormTypeExtension on FormType {
  bool get isLogin => this == FormType.login;

  bool get isRegister => this == FormType.register;
}
