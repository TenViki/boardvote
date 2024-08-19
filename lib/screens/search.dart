import 'package:boardvote/screens/boardgame.dart';
import 'package:boardvote/services/boardgame_service.dart';
import 'package:boardvote/services/userboards_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final games = ref.watch(boardGamesServiceProvider);
    final gamesService = ref.read(boardGamesServiceProvider.notifier);

    return SafeArea(
      child: Column(
        children: [
          TextField(
            controller: searchController,
            decoration: const InputDecoration(
              hintText: "Search for boardgames",
              prefixIcon: Icon(Icons.search),
            ),
            onEditingComplete: () =>
                gamesService.searchGames(searchController.text),
          ),
          Expanded(
              child: switch (games) {
            BoardsInitial() => const Center(
                child: Text("No boardgames found"),
              ),
            BoardsLoading() => const Center(
                child: CircularProgressIndicator(),
              ),
            BoardsError(message: var message) => Text(message),
            BoardsLoaded(games: var games) => ListView.builder(
                itemCount: games.length,
                itemBuilder: (context, index) {
                  final game = games[index];
                  return ListTile(
                    title: Text(game.name),
                    // subtitle: Text(game.),
                    onTap: () => Navigator.of(context)
                        .push(openBoardDetails(game.objectId)),
                  );
                },
              ),
          })
        ],
      ),
    );
  }
}
