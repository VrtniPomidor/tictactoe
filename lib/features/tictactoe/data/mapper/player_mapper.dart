import 'package:tictactoe/features/home/common/data/models/player_response.dart';
import 'package:tictactoe/features/home/games/domain/entities/game_model.dart';

extension PlayerMapper on PlayerModel {
  PlayerResponse mapToPlayerResponse() {
    return PlayerResponse(id: id, username: username);
  }
}
