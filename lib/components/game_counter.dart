import 'package:boardvote/models/session.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GameCounter extends StatelessWidget {
  final Session session;
  final String gameId;
  final List<String> voters;

  const GameCounter(
      {super.key,
      required this.session,
      required this.gameId,
      required this.voters});

  void _handleVote() {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return;
    }

    final userUid = user.uid;
    final game = session.games.firstWhere((game) => game.objectId == gameId);
    final gameVoters = [...game.voters];

    if (gameVoters.contains(userUid)) {
      gameVoters.remove(userUid);
    } else {
      gameVoters.add(userUid);
    }

    final gameObj = GameVoteObject(
      objectId: game.objectId,
      name: game.name,
      voters: gameVoters,
    );

    final gameIndex = session.games.indexWhere((g) => g.objectId == gameId);

    final gamesToUpdate = [...session.games];
    gamesToUpdate[gameIndex] = gameObj;

    // update the session
    FirebaseFirestore.instance
        .collection("sessions")
        .doc(session.id)
        .update({"games": gamesToUpdate.map((g) => g.toJson()).toList()});
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final didUserVote = voters.contains(user?.uid);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          voters.length.toString(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 4),
        IconButton(
            onPressed: _handleVote,
            icon: Icon(
              didUserVote ? Icons.favorite : Icons.favorite_border,
              color: didUserVote ? Colors.red : null,
            ))
      ],
    );
  }
}
