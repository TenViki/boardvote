import 'package:boardvote/models/boardgame.dart';
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

  final response = await dio.get("/thing?id=$objectId");

  final xml = XmlDocument.parse(response.data);

  final boardDocument = xml.getElement("items")!.getElement("item")!;

  final name = boardDocument.getElement("name")!.getAttribute("value");
  final description = boardDocument.getElement("description")!.innerText;
  final image = boardDocument.getElement("image")!.innerText;
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
    minplayers: minplayers!,
    maxplayers: maxplayers!,
    yearPublished: yearPublished!,
    relatedLinks: relatedLinks,
    playingTime: playingTime!,
    minAge: minAge!,
  );
}
