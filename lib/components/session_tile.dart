import 'package:animations/animations.dart';
import 'package:boardvote/components/game_counter.dart';
import 'package:boardvote/components/session_details.dart';
import 'package:boardvote/models/session.dart';
import 'package:boardvote/screens/boardgame.dart';
import 'package:flutter/material.dart';
import "package:intl/intl.dart";

class SessionTile extends StatelessWidget {
  Session session;
  SessionTile({super.key, required this.session});

  int _getMaxVotes() {
    int maxVotes = 1;
    for (var game in session.games) {
      if (game.voters.length > maxVotes) {
        maxVotes = game.voters.length;
      }
    }
    return maxVotes;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: _OpenSessionDetailsContainer(
        session: session,
        closedChild: Container(
          padding: const EdgeInsets.all(16),
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
                  const SizedBox(width: 8),
                  Expanded(child: Text(session.publisherName)),

                  // format date from timestamp
                  Text(DateFormat.yMMMd().format(
                      DateTime.fromMillisecondsSinceEpoch(session.timestamp)))
                ],
              ),
              const SizedBox(height: 8),
              for (var game in session.games)
                GameVoteTile(
                  game: game,
                  maxVotes: _getMaxVotes(),
                  session: session,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class GameVoteTile extends StatelessWidget {
  GameVoteObject game;
  int maxVotes;
  Session session;
  GameVoteTile(
      {super.key,
      required this.game,
      required this.maxVotes,
      required this.session});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            child: AnimatedFractionallySizedBox(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutCubic,
              alignment: Alignment.centerLeft,
              widthFactor: game.voters.length / maxVotes,
              heightFactor: .9,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              ),
            ),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 16),
          title: Text(game.name),
          trailing: GameCounter(
              session: session, gameId: game.objectId, voters: game.voters),
          onTap: () =>
              Navigator.of(context).push(openBoardDetails(game.objectId)),
        ),
      ],
    );
  }
}

class _OpenSessionDetailsContainer extends StatelessWidget {
  _OpenSessionDetailsContainer({
    required this.session,
    required this.closedChild,
  });

  Session session;
  Widget closedChild;

  @override
  Widget build(BuildContext context) {
    print("Updated session here: $session");
    final theme = Theme.of(context);

    return OpenContainer(
      openBuilder: (context, closedContainer) {
        return SessionDetails(session: session);
      },
      openColor: theme.cardColor,
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      closedElevation: 0,
      closedColor: Colors.transparent,
      transitionType: ContainerTransitionType.fadeThrough,
      closedBuilder: (context, openContainer) {
        return InkWell(
          onTap: openContainer,
          child: closedChild,
        );
      },
    );
  }
}
