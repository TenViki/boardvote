import 'package:boardvote/components/session_tile.dart';
import 'package:boardvote/models/session.dart';
import 'package:boardvote/screens/following.dart';
import 'package:boardvote/screens/game_session.dart';
import 'package:boardvote/services/feed_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/routes.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feed = ref.watch(feedProvider);

    return Column(
      children: [
        AppBar(
          title: const Text("Boardvote"),
          actions: [
            IconButton(
                onPressed: () => Navigator.of(context)
                    .push(openScreenFromRight(const GameSessionScreen())),
                icon: const Icon(Icons.gamepad)),
            IconButton(
              onPressed: () => Navigator.of(context)
                  .push(openScreenFromRight(FollowingScreen())),
              icon: const Icon(Icons.people),
            ),
          ],
        ),
        // Text("Test"),
        Expanded(
            child: switch (feed) {
          AsyncError(error: var error) => Text("Error: $error"),
          AsyncData(value: var value as List<Session>) =>
            Builder(builder: (context) {
              if (value.isEmpty) {
                return const Center(child: Text("No sessions found"));
              }

              final sorted = value.toList()
                ..sort((a, b) => b.timestamp.compareTo(a.timestamp));

              return ListView.builder(
                  itemCount: sorted.length,
                  itemBuilder: (context, index) {
                    final item = sorted[index];
                    return SessionTile(session: item);
                  });
            }),
          _ => const Center(child: CircularProgressIndicator()),
        })
      ],
    );
  }
}
