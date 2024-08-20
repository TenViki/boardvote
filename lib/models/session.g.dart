// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameVoteObjectImpl _$$GameVoteObjectImplFromJson(Map<String, dynamic> json) =>
    _$GameVoteObjectImpl(
      objectId: json['objectId'] as String,
      name: json['name'] as String,
      voters:
          (json['voters'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$GameVoteObjectImplToJson(
        _$GameVoteObjectImpl instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'name': instance.name,
      'voters': instance.voters,
    };

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      id: json['id'] as String,
      publisherEmail: json['publisherEmail'] as String,
      publisherName: json['publisherName'] as String,
      publisherImage: json['publisherImage'] as String,
      games: (json['games'] as List<dynamic>)
          .map((e) => GameVoteObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'publisherEmail': instance.publisherEmail,
      'publisherName': instance.publisherName,
      'publisherImage': instance.publisherImage,
      'games': instance.games,
      'timestamp': instance.timestamp,
    };
