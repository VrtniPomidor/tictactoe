import '../../home/common/games_constants.dart';

class TictactoeConstants {
  static const String gameRoute = '${HomeConstants.gamesRoute}{id}/';
  static const String gameMoveRoute = '${gameRoute}move/';
  static const String gameJoinRoute = '${gameRoute}join/';

  static const int columns = 3;
  static const int fields = 9;
}
