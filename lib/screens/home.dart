import 'package:boardvote/screens/following.dart';
import 'package:boardvote/screens/game_session.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          actions: [
            IconButton(
                onPressed: () => Navigator.of(context)
                    .push(openScreenFromRight(GameSessionScreen())),
                icon: Icon(Icons.gamepad)),
            IconButton(
              onPressed: () => Navigator.of(context)
                  .push(openScreenFromRight(FollowingScreen())),
              icon: const Icon(Icons.people),
            ),
          ],
        )
      ],
    );
  }
}
