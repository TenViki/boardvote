import 'package:boardvote/screens/boardgame.dart';
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
        title: Text("Current Game Session"),
        actions: [
          IconButton(
            tooltip: "Publish Game Session for your followers to join",
            onPressed: () => gameSessionService.publishSession(),
            icon: const Icon(Icons.published_with_changes),
          ),
        ],
      ),
      body: gameSession.games.length > 0
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
