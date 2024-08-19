// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boardgame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardGameImpl _$$BoardGameImplFromJson(Map<String, dynamic> json) =>
    _$BoardGameImpl(
      name: json['name'] as String,
      yearPublished: json['yearPublished'] as String,
      thumbnail: json['thumbnail'] as String,
      image: json['image'] as String,
      objectId: json['objectId'] as String,
      subtype: json['subtype'] as String,
    );

Map<String, dynamic> _$$BoardGameImplToJson(_$BoardGameImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'yearPublished': instance.yearPublished,
      'thumbnail': instance.thumbnail,
      'image': instance.image,
      'objectId': instance.objectId,
      'subtype': instance.subtype,
    };
