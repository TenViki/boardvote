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

BoardGame _$BoardGameFromJson(Map<String, dynamic> json) {
  return _BoardGame.fromJson(json);
}

/// @nodoc
mixin _$BoardGame {
  String get name => throw _privateConstructorUsedError;
  String get yearPublished => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get objectId => throw _privateConstructorUsedError;
  String get subtype => throw _privateConstructorUsedError;

  /// Serializes this BoardGame to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
      {String name,
      String yearPublished,
      String thumbnail,
      String image,
      String objectId,
      String subtype});
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
abstract class _$$BoardGameImplCopyWith<$Res>
    implements $BoardGameCopyWith<$Res> {
  factory _$$BoardGameImplCopyWith(
          _$BoardGameImpl value, $Res Function(_$BoardGameImpl) then) =
      __$$BoardGameImplCopyWithImpl<$Res>;
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
    Object? name = null,
    Object? yearPublished = null,
    Object? thumbnail = null,
    Object? image = null,
    Object? objectId = null,
    Object? subtype = null,
  }) {
    return _then(_$BoardGameImpl(
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
class _$BoardGameImpl implements _BoardGame {
  const _$BoardGameImpl(
      {required this.name,
      required this.yearPublished,
      required this.thumbnail,
      required this.image,
      required this.objectId,
      required this.subtype});

  factory _$BoardGameImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardGameImplFromJson(json);

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
    return 'BoardGame(name: $name, yearPublished: $yearPublished, thumbnail: $thumbnail, image: $image, objectId: $objectId, subtype: $subtype)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardGameImpl &&
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

  /// Create a copy of BoardGame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardGameImplCopyWith<_$BoardGameImpl> get copyWith =>
      __$$BoardGameImplCopyWithImpl<_$BoardGameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardGameImplToJson(
      this,
    );
  }
}

abstract class _BoardGame implements BoardGame {
  const factory _BoardGame(
      {required final String name,
      required final String yearPublished,
      required final String thumbnail,
      required final String image,
      required final String objectId,
      required final String subtype}) = _$BoardGameImpl;

  factory _BoardGame.fromJson(Map<String, dynamic> json) =
      _$BoardGameImpl.fromJson;

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

  /// Create a copy of BoardGame
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoardGameImplCopyWith<_$BoardGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
