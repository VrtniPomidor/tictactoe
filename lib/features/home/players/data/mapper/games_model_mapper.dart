import 'package:tictactoe/features/auth/domain/entities/user_model.dart';
import 'package:tictactoe/features/home/common/data/models/player_response.dart';
import 'package:tictactoe/features/home/games/data/mapper/games_model_mapper.dart';

import '../../domain/entities/players_score_model.dart';
import '../models/players_page_wrapper.dart';

extension PlayersPageModelMapper on PlayersPageWrapper {
  PlayersWrapperModel mapToPlayersWrapperModel({UserModel? userModel}) {
    return PlayersWrapperModel(
      count: count,
      results: results
          .map((e) => e.mapToPlayerScoreModel(userModel: userModel))
          .toList(),
    );
  }
}

extension PlayerScoreModelMapper on PlayerResponse {
  PlayerScoreModel mapToPlayerScoreModel({UserModel? userModel}) {
    return PlayerScoreModel(
      playerModel: mapToPlayerModel(
        userModel: userModel,
      ),
      gameCount: gameCount,
      winRate: _getWinRate(),
    );
  }

  String _getWinRate() {
    if (winRate == 0) return '0%';
    return '${(winRate * 100).toStringAsFixed(1)}%';
  }
}
