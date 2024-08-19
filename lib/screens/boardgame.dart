import 'package:boardvote/services/boardgame_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:html_unescape/html_unescape.dart";

class BoardgameScreen extends ConsumerWidget {
  final String objectId;
  const BoardgameScreen({super.key, required this.objectId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(fetchBoardgameDataProvider(objectId));

    print("Building boardgame screen for $objectId");
    return Scaffold(
      body: switch (asyncValue) {
        AsyncError(error: var error, stackTrace: var stackTrace) =>
          Text('Error: $error'),
        AsyncData(value: var value) => CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(value.name),
                  background: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.6),
                        ],
                      ),
                    ),
                    child: Image.network(
                      value.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // floating: true,
                pinned: true,
                // snap: true,
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GameOverview(
                        title: "Players",
                        value: "${value.minplayers} - ${value.maxplayers}",
                        icon: Icons.people,
                      ),
                      Container(
                        width: 1,
                        height: 24,
                        color: Theme.of(context)
                            .colorScheme
                            .surfaceContainerHighest,
                      ),
                      GameOverview(
                        title: "Age",
                        value: "${value.minAge}+",
                        icon: Icons.cake,
                      ),
                      Container(
                        width: 1,
                        height: 24,
                        color: Theme.of(context)
                            .colorScheme
                            .surfaceContainerHighest,
                      ),
                      GameOverview(
                        title: "Playing time",
                        value: "${value.playingTime} minutes",
                        icon: Icons.timer,
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                      "${HtmlUnescape().convert(value.description)}Published in ${value.yearPublished}"),
                ),
              ),
              const SliverToBoxAdapter(
                child: AddToGamingSession(),
              ),
              if (value.relatedLinks.isNotEmpty)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Text("Related links",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w300)),
                  ),
                ),
              if (value.relatedLinks.isNotEmpty)
                // related links
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final link = value.relatedLinks[index];
                      return ListTile(
                        title: Text(link.value),
                        subtitle: Text(link.type),
                        onTap: () {
                          Navigator.of(context).push(openBoardDetails(link.id));
                        },
                      );
                    },
                    childCount: value.relatedLinks.length,
                  ),
                ),
            ],
          ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}

class GameOverview extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  const GameOverview(
      {super.key,
      required this.title,
      required this.value,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
              Text(
                value,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary, fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AddToGamingSession extends StatelessWidget {
  const AddToGamingSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16),
      child: RawMaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        fillColor: Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Add to gaming session",
              style: TextStyle(color: Theme.of(context).colorScheme.primary)),
        ),
      ),
    );
  }
}

Route openBoardDetails(String objectId) {
  print("Opening boardgame details for $objectId");
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        BoardgameScreen(objectId: objectId),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
