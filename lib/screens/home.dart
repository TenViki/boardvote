import "package:animations/animations.dart";
import 'package:boardvote/components/session_tile.dart';
import 'package:boardvote/models/session.dart';
import 'package:boardvote/screens/following.dart';
import 'package:boardvote/screens/game_session.dart';
import 'package:boardvote/services/feed_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            const OpenContainerAppbar(
              icon: Icon(Icons.gamepad),
              openedChild: GameSessionScreen(),
            ),
            OpenContainerAppbar(
              icon: const Icon(Icons.people),
              openedChild: FollowingScreen(),
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
                  padding: EdgeInsets.zero,
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

class OpenContainerAppbar extends StatelessWidget {
  const OpenContainerAppbar({
    required this.icon,
    required this.openedChild,
  });

  final Widget icon;
  final Widget openedChild;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return OpenContainer(
      openBuilder: (context, closedContainer) {
        return openedChild;
      },
      openColor: theme.cardColor,
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      closedElevation: 0,
      closedColor: Colors.transparent,
      transitionType: ContainerTransitionType.fadeThrough,
      closedBuilder: (context, openContainer) {
        return IconButton(
          onPressed: openContainer,
          icon: icon,
        );
      },
    );
  }
}
