import "dart:async";

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:tictactoe/core/network/api_constants.dart';
import 'package:tictactoe/features/home/common/games_constants.dart';
import 'package:tictactoe/features/home/games/data/models/games_page_wrapper.dart';
import 'package:tictactoe/features/home/games/data/models/games_response.dart';
import 'package:tictactoe/features/tictactoe/data/models/move_game_request.dart';
import 'package:tictactoe/features/tictactoe/data/tictactoe_constants.dart';

import '../../features/auth/common/auth_constants.dart';
import '../../features/auth/data/models/login_request.dart';
import '../../features/auth/data/models/login_response.dart';
import '../../features/home/players/data/models/players_page_wrapper.dart';

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
  Future<PlayersPageWrapper> getPlayers({
    @Query('offset') required int offset,
    @Query('limit') int limit = HomeConstants.pagingLimit,
  });

  @GET(TictactoeConstants.gameRoute)
  Future<GameResponse> getGame({
    @Path('id') required int id,
  });

  @POST(HomeConstants.gamesRoute)
  Future<GameResponse> createGame();

  @POST(TictactoeConstants.gameJoinRoute)
  Future<void> joinGame({
    @Path('id') required int id,
  });

  @POST(TictactoeConstants.gameMoveRoute)
  Future<void> moveGame({
    @Path('id') required int id,
    @Body() required MoveGameRequest moveGameRequest,
  });
}
