import 'package:animations/animations.dart';
import 'package:boardvote/screens/boardgame.dart';
import 'package:boardvote/screens/search.dart';
import 'package:boardvote/services/game_session_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameSessionScreen extends ConsumerWidget {
  const GameSessionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSession = ref.watch(gameSessionServiceProvider);
    final gameSessionService = ref.read(gameSessionServiceProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Current Game Session"),
        actions: [
          IconButton(
            tooltip: "Publish Game Session for your followers to join",
            onPressed: gameSession.games.isNotEmpty
                ? () => gameSessionService.publishSession()
                : null,
            icon: const Icon(Icons.published_with_changes),
          ),
        ],
      ),
      floatingActionButton: _OpenContainerWrapper(),
      body: gameSession.games.isNotEmpty
          ? ListView.builder(
              itemCount: gameSession.games.length,
              itemBuilder: (context, index) {
                final game = gameSession.games[index];
                return ListTile(
                  title: Text(game.name),
                  trailing: IconButton(
                    onPressed: () =>
                        gameSessionService.removeGameFromSession(game),
                    icon: const Icon(Icons.delete),
                  ),
                  onTap: () => Navigator.of(context)
                      .push(openBoardDetails(game.objectId)),
                );
              })
          : const Center(
              child: Text("No games added to the session yet"),
            ),
    );
  }
}

Route openGameSession() {
  return MaterialPageRoute(builder: (context) => const GameSessionScreen());
}

class _OpenContainerWrapper extends StatelessWidget {
  const _OpenContainerWrapper();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return OpenContainer(
      openBuilder: (context, closedContainer) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Add boardgames"),
          ),
          body: const SearchScreen(),
        );
      },
      openColor: theme.cardColor,
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      transitionType: ContainerTransitionType.fadeThrough,
      closedElevation: 0,
      closedColor: Colors.transparent,
      closedBuilder: (context, openContainer) {
        return FloatingActionButton(
            onPressed: openContainer, child: Icon(Icons.add));
      },
    );
  }
}
