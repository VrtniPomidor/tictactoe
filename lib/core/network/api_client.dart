import "dart:async";

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:tictactoe/core/network/api_constants.dart';
import 'package:tictactoe/features/login/common/login_constants.dart';

import '../../features/login/data/models/login_request.dart';
import '../../features/login/data/models/login_response.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @POST(LoginConstants.loginRoute)
  @Headers(<String, dynamic>{
    ApiConstants.noTokenHeader: true,
  })
  Future<LoginResponse> loginUser(@Body() LoginRequest loginRequest);

  @POST(LoginConstants.logoutRoute)
  Future<void> logoutUser();
}
