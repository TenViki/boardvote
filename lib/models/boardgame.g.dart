// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boardgame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardGameLowImpl _$$BoardGameLowImplFromJson(Map<String, dynamic> json) =>
    _$BoardGameLowImpl(
      name: json['name'] as String,
      yearPublished: json['yearPublished'] as String,
      thumbnail: json['thumbnail'] as String,
      image: json['image'] as String,
      objectId: json['objectId'] as String,
      subtype: json['subtype'] as String,
    );

Map<String, dynamic> _$$BoardGameLowImplToJson(_$BoardGameLowImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'yearPublished': instance.yearPublished,
      'thumbnail': instance.thumbnail,
      'image': instance.image,
      'objectId': instance.objectId,
      'subtype': instance.subtype,
    };
