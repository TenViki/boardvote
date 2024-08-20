import 'package:boardvote/models/boardgame.dart';
import 'package:boardvote/services/userboards_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:xml/xml.dart';

part 'boardgame_service.g.dart';

@riverpod
Future<BoardGame> fetchBoardgameData(Ref ref, String objectId) async {
  final dio = Dio(
    BaseOptions(baseUrl: "https://boardgamegeek.com/xmlapi2/"),
  );

  final response = await dio.get("/thing", queryParameters: {
    "id": objectId,
  });

  final xml = XmlDocument.parse(response.data);

  final boardDocument = xml.getElement("items")!.getElement("item")!;

  final name = boardDocument.getElement("name")!.getAttribute("value");
  final description = boardDocument.getElement("description")!.innerText;
  final image = boardDocument.getElement("image")?.innerText ??
      "https://images.unsplash.com/photo-1457694716743-eb419114c894?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

  final thumbnail = boardDocument.getElement("thumbnail")?.innerText ??
      "https://images.unsplash.com/photo-1457694716743-eb419114c894?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

  final minplayers =
      boardDocument.getElement("minplayers")!.getAttribute("value");
  final maxplayers =
      boardDocument.getElement("maxplayers")!.getAttribute("value");
  final yearPublished =
      boardDocument.getElement("yearpublished")!.getAttribute("value");
  final playingTime =
      boardDocument.getElement("playingtime")!.getAttribute("value");
  final minAge = boardDocument.getElement("minage")!.getAttribute("value");

  List<RelatedLink> relatedLinks = [];

  for (final link in boardDocument.findElements("link")) {
    final type = link.getAttribute("type");
    if (type != "boardgameexpansion") continue;
    relatedLinks.add(
      RelatedLink(
        type: "Board game expansion",
        id: link.getAttribute("id")!,
        value: link.getAttribute("value")!,
      ),
    );
  }

  return BoardGame(
    name: name!,
    description: description,
    image: image,
    thumbnail: thumbnail,
    minplayers: minplayers!,
    maxplayers: maxplayers!,
    yearPublished: yearPublished!,
    relatedLinks: relatedLinks,
    playingTime: playingTime!,
    minAge: minAge!,
    objectId: objectId,
  );
}

@riverpod
class BoardGamesService extends _$BoardGamesService {
  @override
  BoardsState build() => BoardsInitial();

  searchGames(String searchTerm) async {
    print("Searching for $searchTerm");
    state = BoardsLoading();

    final dio = Dio(
      BaseOptions(baseUrl: "https://boardgamegeek.com/xmlapi2/"),
    );

    final response = await dio.get("/search", queryParameters: {
      "type": "boardgame",
      "query": searchTerm,
    });

    final xml = XmlDocument.parse(response.data);

    final games = xml.findAllElements("item");

    final parsedGames = games.map((game) {
      final name = game.getElement("name")!.getAttribute("value");
      final objectId = game.getAttribute("id")!;
      final subtype = game.getAttribute("type")!;

      return BoardGameLow(
        name: name!,
        yearPublished: "",
        thumbnail: "",
        image: "",
        objectId: objectId,
        subtype: subtype,
      );
    }).toList();

    state = BoardsLoaded(parsedGames);
  }
}
