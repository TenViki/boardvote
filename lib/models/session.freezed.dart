// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameVoteObject _$GameVoteObjectFromJson(Map<String, dynamic> json) {
  return _GameVoteObject.fromJson(json);
}

/// @nodoc
mixin _$GameVoteObject {
  String get objectId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get voters => throw _privateConstructorUsedError;

  /// Serializes this GameVoteObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameVoteObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameVoteObjectCopyWith<GameVoteObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameVoteObjectCopyWith<$Res> {
  factory $GameVoteObjectCopyWith(
          GameVoteObject value, $Res Function(GameVoteObject) then) =
      _$GameVoteObjectCopyWithImpl<$Res, GameVoteObject>;
  @useResult
  $Res call({String objectId, String name, List<String> voters});
}

/// @nodoc
class _$GameVoteObjectCopyWithImpl<$Res, $Val extends GameVoteObject>
    implements $GameVoteObjectCopyWith<$Res> {
  _$GameVoteObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameVoteObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? name = null,
    Object? voters = null,
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
      voters: null == voters
          ? _value.voters
          : voters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameVoteObjectImplCopyWith<$Res>
    implements $GameVoteObjectCopyWith<$Res> {
  factory _$$GameVoteObjectImplCopyWith(_$GameVoteObjectImpl value,
          $Res Function(_$GameVoteObjectImpl) then) =
      __$$GameVoteObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String objectId, String name, List<String> voters});
}

/// @nodoc
class __$$GameVoteObjectImplCopyWithImpl<$Res>
    extends _$GameVoteObjectCopyWithImpl<$Res, _$GameVoteObjectImpl>
    implements _$$GameVoteObjectImplCopyWith<$Res> {
  __$$GameVoteObjectImplCopyWithImpl(
      _$GameVoteObjectImpl _value, $Res Function(_$GameVoteObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameVoteObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? name = null,
    Object? voters = null,
  }) {
    return _then(_$GameVoteObjectImpl(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      voters: null == voters
          ? _value._voters
          : voters // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameVoteObjectImpl implements _GameVoteObject {
  _$GameVoteObjectImpl(
      {required this.objectId,
      required this.name,
      required final List<String> voters})
      : _voters = voters;

  factory _$GameVoteObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameVoteObjectImplFromJson(json);

  @override
  final String objectId;
  @override
  final String name;
  final List<String> _voters;
  @override
  List<String> get voters {
    if (_voters is EqualUnmodifiableListView) return _voters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voters);
  }

  @override
  String toString() {
    return 'GameVoteObject(objectId: $objectId, name: $name, voters: $voters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameVoteObjectImpl &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._voters, _voters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, objectId, name,
      const DeepCollectionEquality().hash(_voters));

  /// Create a copy of GameVoteObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameVoteObjectImplCopyWith<_$GameVoteObjectImpl> get copyWith =>
      __$$GameVoteObjectImplCopyWithImpl<_$GameVoteObjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameVoteObjectImplToJson(
      this,
    );
  }
}

abstract class _GameVoteObject implements GameVoteObject {
  factory _GameVoteObject(
      {required final String objectId,
      required final String name,
      required final List<String> voters}) = _$GameVoteObjectImpl;

  factory _GameVoteObject.fromJson(Map<String, dynamic> json) =
      _$GameVoteObjectImpl.fromJson;

  @override
  String get objectId;
  @override
  String get name;
  @override
  List<String> get voters;

  /// Create a copy of GameVoteObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameVoteObjectImplCopyWith<_$GameVoteObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  String get publisherEmail => throw _privateConstructorUsedError;
  String get publisherName => throw _privateConstructorUsedError;
  String get publisherImage => throw _privateConstructorUsedError;
  List<GameVoteObject> get games => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int? get date => throw _privateConstructorUsedError;

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {String id,
      String publisherEmail,
      String publisherName,
      String publisherImage,
      List<GameVoteObject> games,
      int timestamp,
      String name,
      String location,
      String? notes,
      int? date});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? publisherEmail = null,
    Object? publisherName = null,
    Object? publisherImage = null,
    Object? games = null,
    Object? timestamp = null,
    Object? name = null,
    Object? location = null,
    Object? notes = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      publisherEmail: null == publisherEmail
          ? _value.publisherEmail
          : publisherEmail // ignore: cast_nullable_to_non_nullable
              as String,
      publisherName: null == publisherName
          ? _value.publisherName
          : publisherName // ignore: cast_nullable_to_non_nullable
              as String,
      publisherImage: null == publisherImage
          ? _value.publisherImage
          : publisherImage // ignore: cast_nullable_to_non_nullable
              as String,
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<GameVoteObject>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
          _$SessionImpl value, $Res Function(_$SessionImpl) then) =
      __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String publisherEmail,
      String publisherName,
      String publisherImage,
      List<GameVoteObject> games,
      int timestamp,
      String name,
      String location,
      String? notes,
      int? date});
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
      _$SessionImpl _value, $Res Function(_$SessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? publisherEmail = null,
    Object? publisherName = null,
    Object? publisherImage = null,
    Object? games = null,
    Object? timestamp = null,
    Object? name = null,
    Object? location = null,
    Object? notes = freezed,
    Object? date = freezed,
  }) {
    return _then(_$SessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      publisherEmail: null == publisherEmail
          ? _value.publisherEmail
          : publisherEmail // ignore: cast_nullable_to_non_nullable
              as String,
      publisherName: null == publisherName
          ? _value.publisherName
          : publisherName // ignore: cast_nullable_to_non_nullable
              as String,
      publisherImage: null == publisherImage
          ? _value.publisherImage
          : publisherImage // ignore: cast_nullable_to_non_nullable
              as String,
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<GameVoteObject>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionImpl implements _Session {
  _$SessionImpl(
      {required this.id,
      required this.publisherEmail,
      required this.publisherName,
      required this.publisherImage,
      required final List<GameVoteObject> games,
      required this.timestamp,
      required this.name,
      required this.location,
      required this.notes,
      required this.date})
      : _games = games;

  factory _$SessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionImplFromJson(json);

  @override
  final String id;
  @override
  final String publisherEmail;
  @override
  final String publisherName;
  @override
  final String publisherImage;
  final List<GameVoteObject> _games;
  @override
  List<GameVoteObject> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  final int timestamp;
  @override
  final String name;
  @override
  final String location;
  @override
  final String? notes;
  @override
  final int? date;

  @override
  String toString() {
    return 'Session(id: $id, publisherEmail: $publisherEmail, publisherName: $publisherName, publisherImage: $publisherImage, games: $games, timestamp: $timestamp, name: $name, location: $location, notes: $notes, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.publisherEmail, publisherEmail) ||
                other.publisherEmail == publisherEmail) &&
            (identical(other.publisherName, publisherName) ||
                other.publisherName == publisherName) &&
            (identical(other.publisherImage, publisherImage) ||
                other.publisherImage == publisherImage) &&
            const DeepCollectionEquality().equals(other._games, _games) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      publisherEmail,
      publisherName,
      publisherImage,
      const DeepCollectionEquality().hash(_games),
      timestamp,
      name,
      location,
      notes,
      date);

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionImplToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  factory _Session(
      {required final String id,
      required final String publisherEmail,
      required final String publisherName,
      required final String publisherImage,
      required final List<GameVoteObject> games,
      required final int timestamp,
      required final String name,
      required final String location,
      required final String? notes,
      required final int? date}) = _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  @override
  String get id;
  @override
  String get publisherEmail;
  @override
  String get publisherName;
  @override
  String get publisherImage;
  @override
  List<GameVoteObject> get games;
  @override
  int get timestamp;
  @override
  String get name;
  @override
  String get location;
  @override
  String? get notes;
  @override
  int? get date;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
