import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';

import '../../../common/widgets/app_divider.dart';
import '../../../common/widgets/snackbar_widgets.dart';
import '../blocs/user_login/login_cubit.dart';
import '../widgets/login_buttons.dart';
import '../widgets/login_input_fields.dart';

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
      builder: (context, state) => Center(
        child: SingleChildScrollView(
          padding: appMargins,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UsernameInputField(state: state),
              AppDivider.vertical(),
              PasswordInputField(state: state),
              AppDivider.vertical(),
              LoginButton(
                isBusy: state.status.isSubmissionInProgress,
              ),
              AppDivider.vertical(),
              const SignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
