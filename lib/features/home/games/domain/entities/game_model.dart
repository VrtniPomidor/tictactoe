import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'game_model.freezed.dart';

@freezed
class GamesWrapperModel with _$GamesWrapperModel {
  factory GamesWrapperModel({
    required int count,
    required List<GameModel> results,
  }) = _GamesWrapperModel;
}

@freezed
class GameModel with _$GameModel {
  factory GameModel({
    required int id,
    required List<List<int?>> board,
    PlayerModel? winner,
    PlayerModel? firstPlayer,
    PlayerModel? secondPlayer,
    required DateTime created,
    required String status,
  }) = _GameModel;
}

@freezed
class PlayerModel with _$PlayerModel {
  factory PlayerModel({
    required int id,
    required String username,
    @Default(false) bool isMe,
  }) = _PlayerModel;
}

extension GameModelExtension on GameModel {
  String get playerOneName {
    if (firstPlayer == null) return 'N/A';
    return _isMe(firstPlayer, _playerName(firstPlayer!));
  }

  String get playerTwoName {
    if (secondPlayer == null) return 'N/A';
    return _isMe(secondPlayer, _playerName(secondPlayer!));
  }

  /// Add String tag if this player is the winner
  String _playerName(PlayerModel player) {
    if (winner == null) return player.username;
    if (winner!.id == player.id) {
      return '${player.username} (Winner)';
    }
    return player.username;
  }

  /// Add String tag if this player is the user
  String _isMe(PlayerModel? playerModel, String name) {
    if (playerModel?.isMe == true) {
      return '$name (Me)';
    }
    return name;
  }

  String get createdTime => DateFormat('yyyy-MM-dd - HH:mm').format(created);
}
