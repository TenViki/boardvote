import 'package:boardvote/components/boardgame_tile.dart';
import 'package:boardvote/models/boardgame.dart';
import 'package:flutter/material.dart';

class BoardGameList extends StatelessWidget {
  final List<BoardGame> boardGames;
  const BoardGameList({super.key, required this.boardGames});

  @override
  Widget build(BuildContext context) {
    print("Trying to build boardgame list with ${boardGames.length} games");

    return ListView.builder(
      itemCount: boardGames.length,
      padding: EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (context, index) {
        return BoardGameTile(boardGame: boardGames[index]);
      },
    );
  }
}
