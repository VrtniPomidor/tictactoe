import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/api_client.dart';
import '../models/login_request.dart';
import '../models/login_response.dart';

abstract class LoginRemoteDataSource {
  Future<LoginResponse> loginUser(String username, String password);
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
    } on DioError {
      throw ServerException();
    }
  }
}
