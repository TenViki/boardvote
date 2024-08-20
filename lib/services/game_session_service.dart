import 'package:boardvote/models/boardgame.dart';
import 'package:boardvote/services/userboards_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_session_service.g.dart';

@riverpod
class GameSessionService extends _$GameSessionService {
  @override
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

  publishSession(String name, String? notes, String location, DateTime? date) {
    final user = FirebaseAuth.instance.currentUser;
    // publish the session
    FirebaseFirestore.instance.collection("sessions").add({
      "games": state.games.map((g) => {"voters": [], ...g.toJson()}).toList(),
      "timestamp": DateTime.now().millisecondsSinceEpoch,
      "publisherEmail": user!.email,
      "publisherName": user.displayName,
      "publisherImage": user.photoURL,
      "name": name,
      "notes": notes,
      "location": location,
      "date": date?.millisecondsSinceEpoch,
    });

    clearSession();
  }
}
