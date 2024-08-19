import "package:freezed_annotation/freezed_annotation.dart";

part "boardgame.freezed.dart";
part 'boardgame.g.dart';

@freezed
class BoardGame with _$BoardGame {
  const factory BoardGame({
    required String name,
    required String yearPublished,
    required String thumbnail,
    required String image,
    required String objectId,
    required String subtype,
  }) = _BoardGame;

  factory BoardGame.fromJson(Map<String, dynamic> json) =>
      _$BoardGameFromJson(json);
}
