import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/error_parser.dart';
import 'package:tictactoe/features/home/games/data/models/games_page_wrapper.dart';

import '../../../../../core/network/api_client.dart';

abstract class GamesRemoteDataSource {
  Future<GamesPageWrapper> getGames({String? status, int offset = 0});
}

@Injectable(as: GamesRemoteDataSource)
class GamesRemoteDataSourceImpl extends GamesRemoteDataSource {
  final ApiClient restClientService;

  GamesRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<GamesPageWrapper> getGames({String? status, int offset = 0}) async {
    try {
      return await restClientService.getGames(status: null, offset: offset);
    } on DioError catch (e) {
      final exception = e.parseError();
      throw exception;
    }
  }
}
