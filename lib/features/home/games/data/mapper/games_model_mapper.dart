import 'package:tictactoe/features/home/games/data/models/games_page_wrapper.dart';
import 'package:tictactoe/features/home/games/data/models/games_response.dart';
import 'package:tictactoe/features/home/games/data/models/player_response.dart';

import '../../domain/entities/game_model.dart';

extension GamesPageModelMapper on GamesPageWrapper {
  GamesWrapperModel mapToGamesModel() {
    return GamesWrapperModel(
      count: count,
      results: results.map((e) => e.mapToGamesModel()).toList(),
    );
  }
}

extension GamesModelMapper on GameResponse {
  GameModel mapToGamesModel() {
    return GameModel(
      id: id,
      winner: secondPlayer?.mapToUserModel(),
      firstPlayer: firstPlayer?.mapToUserModel(),
      secondPlayer: secondPlayer?.mapToUserModel(),
      created: created,
      status: status,
    );
  }
}

extension UserModelMapper on PlayerResponse {
  PlayerModel mapToUserModel() {
    return PlayerModel(
      id: id,
      username: username,
    );
  }
}
