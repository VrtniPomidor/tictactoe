import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/di/di_init.dart';
import '../../../auth/domain/repositories/login_repository.dart';
import '../../router/app_router.gr.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final LoginRepository _loginRepository;

  AuthCubit(this._loginRepository) : super(const AuthState.initial());

  Future<void> checkIsLoggedIn() async {
    try {
      var token = await _loginRepository.fetchCachedToken();
      token.fold(
        (l) => emit(const AuthState.showLogin()),
        (r) => r.isEmpty
            ? emit(const AuthState.showLogin())
            : emit(const AuthState.showHome()),
      );
    } catch (error) {
      emit(const AuthState.showLogin());
    }
  }

  Future<void> logout() async {
    _loginRepository.signOut();
    loggedOut();
  }

  Future<void> loggedOut() async {
    _loginRepository.clearStorage();
    getIt<AppRouter>().replace(const LoginRoute());
  }
}
