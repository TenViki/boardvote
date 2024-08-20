import 'package:boardvote/components/session_tile.dart';
import 'package:boardvote/models/session.dart';
import 'package:boardvote/services/feed_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class SessionDetails extends ConsumerWidget {
  SessionDetails({super.key, required this.session});
  Session session;

  int _getMaxVotes(Session session) {
    int maxVotes = 1;
    for (var game in session.games) {
      if (game.voters.length > maxVotes) {
        maxVotes = game.voters.length;
      }
    }
    return maxVotes;
  }

  int _getTotalVotes(Session session) {
    int totalVotes = 0;
    for (var game in session.games) {
      totalVotes += game.voters.length;
    }
    return totalVotes;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feed = ref.watch(feedProvider);
    print("Building session details for ${session.name}");

    final updatedSession = feed.maybeWhen(
      data: (sessions) => sessions.firstWhere(
        (element) => element.id == session.id,
        orElse: () => session,
      ),
      orElse: () => session,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(updatedSession.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        NetworkImage(updatedSession.publisherImage),
                  ),
                  const SizedBox(width: 8),
                  Expanded(child: Text(updatedSession.publisherName)),
                  Text(
                    DateFormat.yMMMd().format(
                        DateTime.fromMillisecondsSinceEpoch(
                            updatedSession.timestamp)),
                  )
                ],
              ),
              const SizedBox(height: 32),
              _quickStats(updatedSession),
              const SizedBox(height: 16),
              for (var game in updatedSession.games)
                GameVoteTile(
                  game: game,
                  maxVotes: _getMaxVotes(updatedSession),
                  session: updatedSession,
                ),
              if (updatedSession.notes != null) _notes(context, updatedSession),
            ],
          ),
        ),
      ),
    );
  }

  Widget _notes(BuildContext context, Session session) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Notes",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            session.notes!,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _quickStats(Session session) {
    final date = DateTime.fromMillisecondsSinceEpoch(session.timestamp);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GameOverview(
          title: "Time",
          value: DateFormat.MMMd().format(date) +
              " " +
              DateFormat.Hm().format(date),
          icon: Icons.calendar_month,
        ),
        GameOverview(
          title: "Location",
          value: session.location ?? "Unknown",
          icon: Icons.location_on,
        ),
        GameOverview(
          title: "Votes",
          value: _getTotalVotes(session).toString(),
          icon: Icons.thumb_up,
        ),
      ],
    );
  }
}

class GameOverview extends StatelessWidget {
  GameOverview(
      {super.key,
      required this.title,
      required this.value,
      required this.icon});
  String title;
  String value;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Theme.of(context).colorScheme.secondary,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
            Text(
              value,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }
}
