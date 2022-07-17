import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/error_parser.dart';
import 'package:tictactoe/features/home/games/data/models/games_response.dart';
import 'package:tictactoe/features/tictactoe/data/models/move_game_request.dart';

import '../../../../../core/network/api_client.dart';

abstract class TictactoeRemoteDataSource {
  Future<GameResponse> getGame({required int id});

  Future<GameResponse> createGame();

  Future<void> joinGame({required int gameId});

  Future<void> makeMove(
      {required int gameId, required int row, required int column});
}

@Injectable(as: TictactoeRemoteDataSource)
class TictactoeRemoteDataSourceImpl extends TictactoeRemoteDataSource {
  final ApiClient restClientService;

  TictactoeRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<GameResponse> getGame({required int id}) async {
    try {
      return await restClientService.getGame(id: id);
    } on DioError catch (e) {
      debugPrint(e.message);
      final exception = e.parseError();
      throw exception;
    }
  }

  @override
  Future<GameResponse> createGame() async {
    try {
      return await restClientService.createGame();
    } on DioError catch (e) {
      final exception = e.parseError();
      throw exception;
    }
  }

  @override
  Future<void> joinGame({required int gameId}) async {
    try {
      return await restClientService.joinGame(
        id: gameId,
      );
    } on DioError catch (e) {
      debugPrint(e.message);
      final exception = e.parseError();
      throw exception;
    }
  }

  @override
  Future<void> makeMove(
      {required int gameId, required int row, required int column}) async {
    try {
      return restClientService.moveGame(
        id: gameId,
        moveGameRequest: MoveGameRequest(row: row, column: column),
      );
    } on DioError catch (e) {
      final exception = e.parseError();
      throw exception;
    }
  }
}
