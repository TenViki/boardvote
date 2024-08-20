import "package:boardvote/models/boardgame.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import 'package:dio/dio.dart';
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:xml/xml.dart";

part "userboards_service.g.dart";

sealed class BoardsState {}

class BoardsInitial extends BoardsState {}

class BoardsLoading extends BoardsState {}

class BoardsLoaded extends BoardsState {
  final List<BoardGameLow> games;
  BoardsLoaded(this.games);
}

class BoardsError extends BoardsState {
  final String message;
  BoardsError(this.message);
}

@riverpod
class BoardService extends _$BoardService {
  Dio dio = Dio(
    BaseOptions(baseUrl: "https://boardgamegeek.com/xmlapi2/"),
  );

  @override
  BoardsState build() => BoardsInitial();

  Future<void> syncCollection(String username) async {
    state = BoardsLoading();
    _syncCollection(username);
  }

  Future<void> getBoardgamesForUser(String uid) async {
    state = BoardsLoading();

    final response = await FirebaseFirestore.instance
        .collection("userdata")
        .where("uid", isEqualTo: uid)
        .get();

    if (response.docs.isEmpty) {
      state = BoardsError("User not found");
      return;
    }

    // if user is found fetch the collection from firebase
    final userData = response.docs.first;
    final username = userData["username"];

    final boardgames = await FirebaseFirestore.instance
        .collection("boardgames")
        .doc(username)
        .get();

    if (boardgames.exists) {
      final boardgamesList = boardgames.data()!["boardgames"] as List<dynamic>;

      print("Board games: $boardgamesList");
      final parsed = boardgamesList
          .map((e) => BoardGameLow.fromJson(e as Map<String, dynamic>))
          .toList();

      print(parsed);

      state = BoardsLoaded(
        parsed,
      );
    } else {
      _syncCollection(username);
    }
  }

  Future<void> _syncCollection(String username) async {
    String? data;

    for (;;) {
      print("Fetching collection for $username");
      final response = await dio.get<String>("/collection?username=$username");
      if (response.statusCode == 200) {
        data = response.data;
        break;
      }

      // wait for 5 seconds before trying again
      await Future.delayed(const Duration(seconds: 20));
    }

    final List<BoardGameLow> boardGames = [];

    final xml = XmlDocument.parse(data);
    xml.findAllElements("item").forEach((element) {
      final name = element.getElement("name")?.innerText ?? "";
      final yearPublished =
          element.getElement("yearpublished")?.innerText ?? "";
      final thumbnail = element.getElement("thumbnail")?.innerText ?? "";
      final image = element.getElement("image")?.innerText ?? "";
      final objectId = element.getAttribute("objectid") ?? "";
      final subtype = element.getAttribute("subtype") ?? "";

      final boardGame = BoardGameLow(
        name: name,
        yearPublished: yearPublished,
        thumbnail: thumbnail,
        image: image,
        objectId: objectId,
        subtype: subtype,
      );

      boardGames.add(boardGame);
    });

    print("Board games: $boardGames");

    // state = BoardsLoaded(boardGames.map((e) => e.name).toList());

    final toStore = boardGames.map((e) => e.toJson()).toList();

    // take first 75 board games
    if (toStore.length > 75) {
      toStore.removeRange(75, toStore.length);
    }

    // save the board games to the database
    FirebaseFirestore.instance
        .collection("boardgames")
        .doc()
        .set({"boardgames": toStore});

    state = BoardsLoaded(boardGames);
  }
}
