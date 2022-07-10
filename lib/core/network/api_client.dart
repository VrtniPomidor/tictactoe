import "dart:async";

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:tictactoe/core/network/api_constants.dart';
import 'package:tictactoe/features/home/common/games_constants.dart';
import 'package:tictactoe/features/home/games/data/models/games_page_wrapper.dart';

import '../../features/auth/common/auth_constants.dart';
import '../../features/auth/data/models/login_request.dart';
import '../../features/auth/data/models/login_response.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @POST(AuthConstants.loginRoute)
  @Headers(<String, dynamic>{
    ApiConstants.noTokenHeader: 'true',
  })
  Future<LoginResponse> loginUser(@Body() LoginRequest loginRequest);

  @POST(AuthConstants.registerRoute)
  @Headers(<String, dynamic>{
    ApiConstants.noTokenHeader: 'true',
  })
  Future<void> registerUser(@Body() LoginRequest loginRequest);

  @POST(AuthConstants.logoutRoute)
  Future<void> logoutUser();

  @GET(HomeConstants.gamesRoute)
  Future<GamesPageWrapper> getGames({
    @Query('status') String? status,
    @Query('offset') required int offset,
    @Query('limit') int limit = HomeConstants.pagingLimit,
  });

  @GET(HomeConstants.playersRoute)
  Future<GamesPageWrapper> getPlayers();
}
