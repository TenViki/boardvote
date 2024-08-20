import 'package:boardvote/models/boardgame.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class GameVoteObject with _$GameVoteObject {
  factory GameVoteObject({
    required String objectId,
    required String name,
    required List<String> voters,
  }) = _GameVoteObject;

  factory GameVoteObject.fromJson(Map<String, dynamic> json) =>
      _$GameVoteObjectFromJson(json);
}

@freezed
class Session with _$Session {
  factory Session({
    required String id,
    required String publisherEmail,
    required String publisherName,
    required String publisherImage,
    required List<GameVoteObject> games,
    required int timestamp,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}
