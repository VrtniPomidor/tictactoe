part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.showLogin() = _ShowLogin;

  const factory AuthState.showHome() = _ShowHome;
}
