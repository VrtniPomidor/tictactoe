import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../common/widgets/snackbar_widgets.dart';
import '../blocs/user_login/login_cubit.dart';
import '../widgets/login_with_email_buttons.dart';
import '../widgets/sign_in_page_input_fields.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (p, c) => p.status != c.status,
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
              snackBarWhenFailure(snackBarFailureText: state.exceptionError));
        } else if (state.status.isSubmissionSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(snackBarWhenSuccess());
        }
      },
      builder: (context, state) => Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(38.0, 0, 38.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    UsernameInputField(state: state),
                    PasswordInputField(state: state),
                    LoginButton(
                      isBusy: state.status.isSubmissionInProgress,
                    ),
                    const SignUpButton(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
