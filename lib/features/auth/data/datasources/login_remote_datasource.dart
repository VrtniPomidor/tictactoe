import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/error_parser.dart';

import '../../../../core/network/api_client.dart';
import '../models/login_request.dart';
import '../models/login_response.dart';

abstract class LoginRemoteDataSource {
  Future<LoginResponse> loginUser(String username, String password);

  Future registerUser(String username, String password);

  Future logoutUser();
}

@Injectable(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  final ApiClient restClientService;

  LoginRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<LoginResponse> loginUser(String username, String password) async {
    try {
      return await restClientService
          .loginUser(LoginRequest(username: username, password: password));
    } on DioError catch (e) {
      final exception = e.parseError();
      throw exception;
    }
  }

  @override
  Future registerUser(String username, String password) async {
    try {
      return await restClientService
          .registerUser(LoginRequest(username: username, password: password));
    } on DioError catch (e) {
      final exception = e.parseError();
      throw exception;
    }
  }

  @override
  Future logoutUser() async {
    try {
      return await restClientService.logoutUser();
    } on DioError catch (e) {
      final exception = e.parseError();
      throw exception;
    }
  }
}
