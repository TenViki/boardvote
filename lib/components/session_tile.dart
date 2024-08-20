import 'package:boardvote/components/game_counter.dart';
import 'package:boardvote/models/session.dart';
import 'package:boardvote/screens/boardgame.dart';
import 'package:flutter/material.dart';
import "package:intl/intl.dart";

class SessionTile extends StatelessWidget {
  Session session;
  SessionTile({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    print(session);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.surfaceContainerHigh,
        ),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(session.publisherImage),
                ),
                SizedBox(width: 8),
                Expanded(child: Text(session.publisherName)),

                // format date from timestamp
                Text(DateFormat.yMMMd().format(
                    DateTime.fromMillisecondsSinceEpoch(session.timestamp)))
              ],
            ),
            const SizedBox(height: 8),
            for (var game in session.games)
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(game.name),
                trailing: GameCounter(
                    session: session,
                    gameId: game.objectId,
                    voters: game.voters),
                onTap: () =>
                    Navigator.of(context).push(openBoardDetails(game.objectId)),
              ),
          ],
        ),
      ),
    );
  }
}
