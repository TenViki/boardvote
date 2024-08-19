import 'package:boardvote/models/boardgame.dart';
import 'package:boardvote/screens/boardgame.dart';
import 'package:flutter/material.dart';

class BoardGameTile extends StatelessWidget {
  final BoardGameLow boardGame;
  const BoardGameTile({super.key, required this.boardGame});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () =>
          Navigator.of(context).push(openBoardDetails(boardGame.objectId)),
      leading: SizedBox(
        width: 50,
        height: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Theme.of(context).colorScheme.surfaceContainerHigh,
            child: Image.network(
              boardGame.thumbnail,
              // width: 50,
              // height: 50,
            ),
          ),
        ),
      ),
      title: Text(boardGame.name),
      subtitle: Text(boardGame.yearPublished),
    );
  }
}
