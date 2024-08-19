// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boardgame.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoardGameLow _$BoardGameLowFromJson(Map<String, dynamic> json) {
  return _BoardGameLow.fromJson(json);
}

/// @nodoc
mixin _$BoardGameLow {
  String get name => throw _privateConstructorUsedError;
  String get yearPublished => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get objectId => throw _privateConstructorUsedError;
  String get subtype => throw _privateConstructorUsedError;

  /// Serializes this BoardGameLow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BoardGameLow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BoardGameLowCopyWith<BoardGameLow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardGameLowCopyWith<$Res> {
  factory $BoardGameLowCopyWith(
          BoardGameLow value, $Res Function(BoardGameLow) then) =
      _$BoardGameLowCopyWithImpl<$Res, BoardGameLow>;
  @useResult
  $Res call(
      {String name,
      String yearPublished,
      String thumbnail,
      String image,
      String objectId,
      String subtype});
}

/// @nodoc
class _$BoardGameLowCopyWithImpl<$Res, $Val extends BoardGameLow>
    implements $BoardGameLowCopyWith<$Res> {
  _$BoardGameLowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BoardGameLow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? yearPublished = null,
    Object? thumbnail = null,
    Object? image = null,
    Object? objectId = null,
    Object? subtype = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      yearPublished: null == yearPublished
          ? _value.yearPublished
          : yearPublished // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: null == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardGameLowImplCopyWith<$Res>
    implements $BoardGameLowCopyWith<$Res> {
  factory _$$BoardGameLowImplCopyWith(
          _$BoardGameLowImpl value, $Res Function(_$BoardGameLowImpl) then) =
      __$$BoardGameLowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String yearPublished,
      String thumbnail,
      String image,
      String objectId,
      String subtype});
}

/// @nodoc
class __$$BoardGameLowImplCopyWithImpl<$Res>
    extends _$BoardGameLowCopyWithImpl<$Res, _$BoardGameLowImpl>
    implements _$$BoardGameLowImplCopyWith<$Res> {
  __$$BoardGameLowImplCopyWithImpl(
      _$BoardGameLowImpl _value, $Res Function(_$BoardGameLowImpl) _then)
      : super(_value, _then);

  /// Create a copy of BoardGameLow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? yearPublished = null,
    Object? thumbnail = null,
    Object? image = null,
    Object? objectId = null,
    Object? subtype = null,
  }) {
    return _then(_$BoardGameLowImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      yearPublished: null == yearPublished
          ? _value.yearPublished
          : yearPublished // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: null == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardGameLowImpl implements _BoardGameLow {
  const _$BoardGameLowImpl(
      {required this.name,
      required this.yearPublished,
      required this.thumbnail,
      required this.image,
      required this.objectId,
      required this.subtype});

  factory _$BoardGameLowImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardGameLowImplFromJson(json);

  @override
  final String name;
  @override
  final String yearPublished;
  @override
  final String thumbnail;
  @override
  final String image;
  @override
  final String objectId;
  @override
  final String subtype;

  @override
  String toString() {
    return 'BoardGameLow(name: $name, yearPublished: $yearPublished, thumbnail: $thumbnail, image: $image, objectId: $objectId, subtype: $subtype)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardGameLowImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.yearPublished, yearPublished) ||
                other.yearPublished == yearPublished) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.subtype, subtype) || other.subtype == subtype));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, yearPublished, thumbnail, image, objectId, subtype);

  /// Create a copy of BoardGameLow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardGameLowImplCopyWith<_$BoardGameLowImpl> get copyWith =>
      __$$BoardGameLowImplCopyWithImpl<_$BoardGameLowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardGameLowImplToJson(
      this,
    );
  }
}

abstract class _BoardGameLow implements BoardGameLow {
  const factory _BoardGameLow(
      {required final String name,
      required final String yearPublished,
      required final String thumbnail,
      required final String image,
      required final String objectId,
      required final String subtype}) = _$BoardGameLowImpl;

  factory _BoardGameLow.fromJson(Map<String, dynamic> json) =
      _$BoardGameLowImpl.fromJson;

  @override
  String get name;
  @override
  String get yearPublished;
  @override
  String get thumbnail;
  @override
  String get image;
  @override
  String get objectId;
  @override
  String get subtype;

  /// Create a copy of BoardGameLow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoardGameLowImplCopyWith<_$BoardGameLowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BoardGame {
  String get objectId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get minplayers => throw _privateConstructorUsedError;
  String get maxplayers => throw _privateConstructorUsedError;
  String get yearPublished => throw _privateConstructorUsedError;
  String get playingTime => throw _privateConstructorUsedError;
  String get minAge => throw _privateConstructorUsedError;
  List<RelatedLink> get relatedLinks => throw _privateConstructorUsedError;

  /// Create a copy of BoardGame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BoardGameCopyWith<BoardGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardGameCopyWith<$Res> {
  factory $BoardGameCopyWith(BoardGame value, $Res Function(BoardGame) then) =
      _$BoardGameCopyWithImpl<$Res, BoardGame>;
  @useResult
  $Res call(
      {String objectId,
      String name,
      String description,
      String image,
      String thumbnail,
      String minplayers,
      String maxplayers,
      String yearPublished,
      String playingTime,
      String minAge,
      List<RelatedLink> relatedLinks});
}

/// @nodoc
class _$BoardGameCopyWithImpl<$Res, $Val extends BoardGame>
    implements $BoardGameCopyWith<$Res> {
  _$BoardGameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BoardGame
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? thumbnail = null,
    Object? minplayers = null,
    Object? maxplayers = null,
    Object? yearPublished = null,
    Object? playingTime = null,
    Object? minAge = null,
    Object? relatedLinks = null,
  }) {
    return _then(_value.copyWith(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      minplayers: null == minplayers
          ? _value.minplayers
          : minplayers // ignore: cast_nullable_to_non_nullable
              as String,
      maxplayers: null == maxplayers
          ? _value.maxplayers
          : maxplayers // ignore: cast_nullable_to_non_nullable
              as String,
      yearPublished: null == yearPublished
          ? _value.yearPublished
          : yearPublished // ignore: cast_nullable_to_non_nullable
              as String,
      playingTime: null == playingTime
          ? _value.playingTime
          : playingTime // ignore: cast_nullable_to_non_nullable
              as String,
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as String,
      relatedLinks: null == relatedLinks
          ? _value.relatedLinks
          : relatedLinks // ignore: cast_nullable_to_non_nullable
              as List<RelatedLink>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardGameImplCopyWith<$Res>
    implements $BoardGameCopyWith<$Res> {
  factory _$$BoardGameImplCopyWith(
          _$BoardGameImpl value, $Res Function(_$BoardGameImpl) then) =
      __$$BoardGameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String objectId,
      String name,
      String description,
      String image,
      String thumbnail,
      String minplayers,
      String maxplayers,
      String yearPublished,
      String playingTime,
      String minAge,
      List<RelatedLink> relatedLinks});
}

/// @nodoc
class __$$BoardGameImplCopyWithImpl<$Res>
    extends _$BoardGameCopyWithImpl<$Res, _$BoardGameImpl>
    implements _$$BoardGameImplCopyWith<$Res> {
  __$$BoardGameImplCopyWithImpl(
      _$BoardGameImpl _value, $Res Function(_$BoardGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of BoardGame
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? thumbnail = null,
    Object? minplayers = null,
    Object? maxplayers = null,
    Object? yearPublished = null,
    Object? playingTime = null,
    Object? minAge = null,
    Object? relatedLinks = null,
  }) {
    return _then(_$BoardGameImpl(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      minplayers: null == minplayers
          ? _value.minplayers
          : minplayers // ignore: cast_nullable_to_non_nullable
              as String,
      maxplayers: null == maxplayers
          ? _value.maxplayers
          : maxplayers // ignore: cast_nullable_to_non_nullable
              as String,
      yearPublished: null == yearPublished
          ? _value.yearPublished
          : yearPublished // ignore: cast_nullable_to_non_nullable
              as String,
      playingTime: null == playingTime
          ? _value.playingTime
          : playingTime // ignore: cast_nullable_to_non_nullable
              as String,
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as String,
      relatedLinks: null == relatedLinks
          ? _value._relatedLinks
          : relatedLinks // ignore: cast_nullable_to_non_nullable
              as List<RelatedLink>,
    ));
  }
}

/// @nodoc

class _$BoardGameImpl implements _BoardGame {
  const _$BoardGameImpl(
      {required this.objectId,
      required this.name,
      required this.description,
      required this.image,
      required this.thumbnail,
      required this.minplayers,
      required this.maxplayers,
      required this.yearPublished,
      required this.playingTime,
      required this.minAge,
      required final List<RelatedLink> relatedLinks})
      : _relatedLinks = relatedLinks;

  @override
  final String objectId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String image;
  @override
  final String thumbnail;
  @override
  final String minplayers;
  @override
  final String maxplayers;
  @override
  final String yearPublished;
  @override
  final String playingTime;
  @override
  final String minAge;
  final List<RelatedLink> _relatedLinks;
  @override
  List<RelatedLink> get relatedLinks {
    if (_relatedLinks is EqualUnmodifiableListView) return _relatedLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedLinks);
  }

  @override
  String toString() {
    return 'BoardGame(objectId: $objectId, name: $name, description: $description, image: $image, thumbnail: $thumbnail, minplayers: $minplayers, maxplayers: $maxplayers, yearPublished: $yearPublished, playingTime: $playingTime, minAge: $minAge, relatedLinks: $relatedLinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardGameImpl &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.minplayers, minplayers) ||
                other.minplayers == minplayers) &&
            (identical(other.maxplayers, maxplayers) ||
                other.maxplayers == maxplayers) &&
            (identical(other.yearPublished, yearPublished) ||
                other.yearPublished == yearPublished) &&
            (identical(other.playingTime, playingTime) ||
                other.playingTime == playingTime) &&
            (identical(other.minAge, minAge) || other.minAge == minAge) &&
            const DeepCollectionEquality()
                .equals(other._relatedLinks, _relatedLinks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      objectId,
      name,
      description,
      image,
      thumbnail,
      minplayers,
      maxplayers,
      yearPublished,
      playingTime,
      minAge,
      const DeepCollectionEquality().hash(_relatedLinks));

  /// Create a copy of BoardGame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardGameImplCopyWith<_$BoardGameImpl> get copyWith =>
      __$$BoardGameImplCopyWithImpl<_$BoardGameImpl>(this, _$identity);
}

abstract class _BoardGame implements BoardGame {
  const factory _BoardGame(
      {required final String objectId,
      required final String name,
      required final String description,
      required final String image,
      required final String thumbnail,
      required final String minplayers,
      required final String maxplayers,
      required final String yearPublished,
      required final String playingTime,
      required final String minAge,
      required final List<RelatedLink> relatedLinks}) = _$BoardGameImpl;

  @override
  String get objectId;
  @override
  String get name;
  @override
  String get description;
  @override
  String get image;
  @override
  String get thumbnail;
  @override
  String get minplayers;
  @override
  String get maxplayers;
  @override
  String get yearPublished;
  @override
  String get playingTime;
  @override
  String get minAge;
  @override
  List<RelatedLink> get relatedLinks;

  /// Create a copy of BoardGame
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoardGameImplCopyWith<_$BoardGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
