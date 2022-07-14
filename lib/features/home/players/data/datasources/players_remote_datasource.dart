import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/error_parser.dart';
import 'package:tictactoe/features/home/players/data/models/players_page_wrapper.dart';

import '../../../../../core/network/api_client.dart';

abstract class PlayersRemoteDataSource {
  Future<PlayersPageWrapper> getPlayers({int offset = 0});
}

@Injectable(as: PlayersRemoteDataSource)
class PlayersRemoteDataSourceImpl extends PlayersRemoteDataSource {
  final ApiClient restClientService;

  PlayersRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<PlayersPageWrapper> getPlayers({int offset = 0}) async {
    try {
      return await restClientService.getPlayers(offset: offset);
    } on DioError catch (e) {
      final exception = e.parseError();
      throw exception;
    }
  }
}
