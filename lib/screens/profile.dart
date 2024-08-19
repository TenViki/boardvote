import 'package:boardvote/components/bbg_integration.dart';
import 'package:boardvote/components/boardgame_list.dart';
import 'package:boardvote/components/user_header.dart';
import 'package:boardvote/services/userboards_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boardGames = ref.watch(boardServiceProvider);

    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return Container();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            UserHeader(user: user),
            const SizedBox(height: 16),
            const BbgIntegration(),

            // profile list of boardgames

            Expanded(
              child: Container(
                child: switch (boardGames) {
                  BoardsInitial() => const Center(
                      child: Text("No boardgames found"),
                    ),
                  BoardsLoading() =>
                    const Center(child: CircularProgressIndicator()),
                  BoardsError(message: var message) => Text(message),
                  BoardsLoaded(games: var games) =>
                    BoardGameList(boardGames: games),
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
