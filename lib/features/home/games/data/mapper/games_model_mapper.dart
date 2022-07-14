import 'package:tictactoe/features/auth/domain/entities/user_model.dart';
import 'package:tictactoe/features/home/games/data/models/games_page_wrapper.dart';
import 'package:tictactoe/features/home/games/data/models/games_response.dart';
import 'package:tictactoe/features/home/games/data/models/player_response.dart';

import '../../domain/entities/game_model.dart';

extension GamesPageModelMapper on GamesPageWrapper {
  GamesWrapperModel mapToGamesModel({UserModel? userModel}) {
    return GamesWrapperModel(
      count: count,
      results: results.map((e) => e.mapToGamesModel(userModel)).toList(),
    );
  }
}

extension GamesModelMapper on GameResponse {
  GameModel mapToGamesModel(UserModel? userModel) {
    return GameModel(
      id: id,
      winner: winner?.mapToUserModel(),
      firstPlayer: firstPlayer?.mapToUserModel(userModel: userModel),
      secondPlayer: secondPlayer?.mapToUserModel(userModel: userModel),
      created: created,
      status: status,
    );
  }
}

extension UserModelMapper on PlayerResponse {
  PlayerModel mapToUserModel({UserModel? userModel}) {
    return PlayerModel(id: id, username: username, isMe: id == userModel?.id);
  }
}
