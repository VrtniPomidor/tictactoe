import 'package:tictactoe/features/auth/domain/entities/user_model.dart';
import 'package:tictactoe/features/home/common/data/models/player_response.dart';
import 'package:tictactoe/features/home/games/data/models/games_page_wrapper.dart';
import 'package:tictactoe/features/home/games/data/models/games_response.dart';

import '../../domain/entities/game_model.dart';

extension GamesPageModelMapper on GamesPageWrapper {
  GamesWrapperModel mapToGamesModel({UserModel? userModel}) {
    return GamesWrapperModel(
      count: count,
      results:
          results.map((e) => e.mapToGamesModel(userModel: userModel)).toList(),
    );
  }
}

extension GamesModelMapper on GameResponse {
  GameModel mapToGamesModel({UserModel? userModel}) {
    return GameModel(
      id: id,
      board: board,
      winner: winner?.mapToPlayerModel(),
      firstPlayer: firstPlayer?.mapToPlayerModel(userModel: userModel),
      secondPlayer: secondPlayer?.mapToPlayerModel(userModel: userModel),
      created: created,
      status: status,
    );
  }
}

extension PlayerModelMapper on PlayerResponse {
  PlayerModel mapToPlayerModel({UserModel? userModel}) {
    return PlayerModel(id: id, username: username, isMe: id == userModel?.id);
  }
}
