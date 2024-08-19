import "package:freezed_annotation/freezed_annotation.dart";

part "boardgame.freezed.dart";
part 'boardgame.g.dart';

class RelatedLink {
  final String type;
  final String id;
  final String value;

  RelatedLink({
    required this.type,
    required this.id,
    required this.value,
  });
}

@freezed
class BoardGameLow with _$BoardGameLow {
  const factory BoardGameLow({
    required String name,
    required String yearPublished,
    required String thumbnail,
    required String image,
    required String objectId,
    required String subtype,
  }) = _BoardGameLow;

  factory BoardGameLow.fromJson(Map<String, dynamic> json) =>
      _$BoardGameLowFromJson(json);
}

@freezed
class BoardGame with _$BoardGame {
  const factory BoardGame({
    required String objectId,
    required String name,
    required String description,
    required String image,
    required String thumbnail,
    required String minplayers,
    required String maxplayers,
    required String yearPublished,
    required String playingTime,
    required String minAge,
    required List<RelatedLink> relatedLinks,
  }) = _BoardGame;
}
