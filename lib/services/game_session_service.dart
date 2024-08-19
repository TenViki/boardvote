import 'package:boardvote/models/boardgame.dart';
import 'package:boardvote/services/userboards_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_session_service.g.dart';

@riverpod
class GameSessionService extends _$GameSessionService {
  BoardsLoaded build() => BoardsLoaded([]);

  addGameToSession(BoardGameLow game) {
    state = BoardsLoaded([...state.games, game]);
  }

  removeGameFromSession(BoardGameLow game) {
    state = BoardsLoaded(
        state.games.where((g) => g.objectId != game.objectId).toList());
  }

  clearSession() {
    state = BoardsLoaded([]);
  }

  isGameInSession(String objectId) {
    return state.games.any((g) => g.objectId == objectId);
  }

  publishSession() {
    // publish session to firebase
  }
}
