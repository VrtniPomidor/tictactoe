import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/error/error_parser.dart';
import 'package:tictactoe/features/home/games/data/models/games_response.dart';

import '../../../../../core/network/api_client.dart';

abstract class TictactoeRemoteDataSource {
  Future<GameResponse> getGame({required int id});
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
      final exception = e.parseError();
      throw exception;
    }
  }
}
