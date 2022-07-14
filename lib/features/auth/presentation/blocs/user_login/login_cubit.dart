import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/failure.dart';

import '../../../../common/presentation/strings/string_constants.dart';
import '../../../domain/entities/password.dart';
import '../../../domain/entities/username.dart';
import '../../../domain/repositories/login_repository.dart';

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
      emit(state.copyWith(autoValidate: true));
      if (state.status.isInvalid) return;
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      // If validation passed continue auth
      final result = await _loginRepository.loginUser(
          username: state.username.value, password: state.password.value);
      result.fold(
          (l) => emit(state.copyWith(
                status: FormzStatus.submissionFailure,
                exceptionError: l.errorMessage,
              )),
          (r) => emit(state.copyWith(status: FormzStatus.submissionSuccess)));
    } catch (error) {
      emit(state.copyWith(
          exceptionError: genericErrorMessage,
          status: FormzStatus.submissionFailure));
    }
  }

  void register() async {
    try {
      emit(state.copyWith(autoValidate: true));
      if (state.status.isInvalid) return;
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      // If validation passed continue auth
      final result = await _loginRepository.registerUser(
          username: state.username.value, password: state.password.value);
      result.fold(
          (l) => emit(state.copyWith(
                status: FormzStatus.submissionFailure,
                exceptionError: l.errorMessage,
              )),
          (r) => emit(state.copyWith(status: FormzStatus.submissionSuccess)));
    } catch (error) {
      emit(state.copyWith(
          exceptionError: "Unexpected error please try again later",
          status: FormzStatus.submissionFailure));
    }
  }
}
