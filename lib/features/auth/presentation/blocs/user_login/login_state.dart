part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    @Default(Username.pure()) Username username,
    @Default(Password.pure()) Password password,
    @Default(false) bool autoValidate,
    @Default(FormzStatus.pure) FormzStatus status,
    @Default('') String exceptionError,
  }) = _Initial;
}
