import 'package:animations/animations.dart';
import 'package:boardvote/models/boardgame.dart';
import 'package:boardvote/screens/boardgame.dart';
import 'package:flutter/material.dart';

class BoardGameTile extends StatelessWidget {
  final BoardGameLow boardGame;
  const BoardGameTile({super.key, required this.boardGame});

  @override
  Widget build(BuildContext context) {
    return BoardGameTileWrapper(
      objectId: boardGame.objectId,
      closedChild: ListTile(
        // onTap: () =>
        //     Navigator.of(context).push(openBoardDetails(boardGame.objectId)),
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
      ),
    );
  }
}

class BoardGameTileWrapper extends StatelessWidget {
  const BoardGameTileWrapper({
    required this.objectId,
    required this.closedChild,
  });

  final String objectId;
  final Widget closedChild;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return OpenContainer(
      openBuilder: (context, closedContainer) {
        return BoardgameScreen(objectId: objectId);
      },
      openColor: theme.cardColor,
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
      closedElevation: 0,
      closedColor: theme.cardColor,
      closedBuilder: (context, openContainer) {
        return InkWell(
          onTap: () {
            //  Provider.of<EmailStore>(
            //    context,
            //    listen: false,
            //  ).currentlySelectedEmailId = id;
            openContainer();
          },
          child: closedChild,
        );
      },
    );
  }
}
