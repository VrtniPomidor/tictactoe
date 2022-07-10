import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/features/login/domain/repositories/login_repository.dart';

import '../../../domain/entities/password.dart';
import '../../../domain/entities/username.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository) : super(const LoginState.initial());

  void usernameChanged(String value) {
    final username = Username.dirty(value);
    emit(state.copyWith(
      username: username,
      status: Formz.validate([username, state.password]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
      password: password,
      status: Formz.validate([state.username, password]),
    ));
  }

  void logInWithCredentials() async {
    try {
      // start validating
      emit(state.copyWith(
        autoValidate: true,
      ));
      // start validation only when sign in is clicked
      var validate = Formz.validate([
        Username.dirty(state.username.value),
        Password.dirty(state.password.value)
      ]);
      emit(state.copyWith(status: validate));
      if (!validate.isValid) return;
      // If validation passed continue login
      await _loginRepository.loginUser(
          username: state.username.value, password: state.password.value);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } catch (error) {
      emit(state.copyWith(
          exceptionError: "Unexpected error please try again later",
          status: FormzStatus.submissionFailure));
    }
  }
}
