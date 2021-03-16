// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chatroom_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChatroomEventTearOff {
  const _$ChatroomEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _CreateARoom createARoom({@required String roomName}) {
    return _CreateARoom(
      roomName: roomName,
    );
  }

// ignore: unused_element
  _JoinThisChatroom joinThisChatroom(@required String roomId) {
    return _JoinThisChatroom(
      roomId,
    );
  }

// ignore: unused_element
  _OpenThisChatroom openThisChatroom({@required String chatroomId}) {
    return _OpenThisChatroom(
      chatroomId: chatroomId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChatroomEvent = _$ChatroomEventTearOff();

/// @nodoc
mixin _$ChatroomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult createARoom(String roomName),
    @required TResult joinThisChatroom(@required String roomId),
    @required TResult openThisChatroom(String chatroomId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult createARoom(String roomName),
    TResult joinThisChatroom(@required String roomId),
    TResult openThisChatroom(String chatroomId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult createARoom(_CreateARoom value),
    @required TResult joinThisChatroom(_JoinThisChatroom value),
    @required TResult openThisChatroom(_OpenThisChatroom value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult createARoom(_CreateARoom value),
    TResult joinThisChatroom(_JoinThisChatroom value),
    TResult openThisChatroom(_OpenThisChatroom value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ChatroomEventCopyWith<$Res> {
  factory $ChatroomEventCopyWith(
          ChatroomEvent value, $Res Function(ChatroomEvent) then) =
      _$ChatroomEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatroomEventCopyWithImpl<$Res>
    implements $ChatroomEventCopyWith<$Res> {
  _$ChatroomEventCopyWithImpl(this._value, this._then);

  final ChatroomEvent _value;
  // ignore: unused_field
  final $Res Function(ChatroomEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ChatroomEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ChatroomEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult createARoom(String roomName),
    @required TResult joinThisChatroom(@required String roomId),
    @required TResult openThisChatroom(String chatroomId),
  }) {
    assert(started != null);
    assert(createARoom != null);
    assert(joinThisChatroom != null);
    assert(openThisChatroom != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult createARoom(String roomName),
    TResult joinThisChatroom(@required String roomId),
    TResult openThisChatroom(String chatroomId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult createARoom(_CreateARoom value),
    @required TResult joinThisChatroom(_JoinThisChatroom value),
    @required TResult openThisChatroom(_OpenThisChatroom value),
  }) {
    assert(started != null);
    assert(createARoom != null);
    assert(joinThisChatroom != null);
    assert(openThisChatroom != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult createARoom(_CreateARoom value),
    TResult joinThisChatroom(_JoinThisChatroom value),
    TResult openThisChatroom(_OpenThisChatroom value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatroomEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$CreateARoomCopyWith<$Res> {
  factory _$CreateARoomCopyWith(
          _CreateARoom value, $Res Function(_CreateARoom) then) =
      __$CreateARoomCopyWithImpl<$Res>;
  $Res call({String roomName});
}

/// @nodoc
class __$CreateARoomCopyWithImpl<$Res> extends _$ChatroomEventCopyWithImpl<$Res>
    implements _$CreateARoomCopyWith<$Res> {
  __$CreateARoomCopyWithImpl(
      _CreateARoom _value, $Res Function(_CreateARoom) _then)
      : super(_value, (v) => _then(v as _CreateARoom));

  @override
  _CreateARoom get _value => super._value as _CreateARoom;

  @override
  $Res call({
    Object roomName = freezed,
  }) {
    return _then(_CreateARoom(
      roomName: roomName == freezed ? _value.roomName : roomName as String,
    ));
  }
}

/// @nodoc
class _$_CreateARoom implements _CreateARoom {
  const _$_CreateARoom({@required this.roomName}) : assert(roomName != null);

  @override
  final String roomName;

  @override
  String toString() {
    return 'ChatroomEvent.createARoom(roomName: $roomName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateARoom &&
            (identical(other.roomName, roomName) ||
                const DeepCollectionEquality()
                    .equals(other.roomName, roomName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roomName);

  @JsonKey(ignore: true)
  @override
  _$CreateARoomCopyWith<_CreateARoom> get copyWith =>
      __$CreateARoomCopyWithImpl<_CreateARoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult createARoom(String roomName),
    @required TResult joinThisChatroom(@required String roomId),
    @required TResult openThisChatroom(String chatroomId),
  }) {
    assert(started != null);
    assert(createARoom != null);
    assert(joinThisChatroom != null);
    assert(openThisChatroom != null);
    return createARoom(roomName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult createARoom(String roomName),
    TResult joinThisChatroom(@required String roomId),
    TResult openThisChatroom(String chatroomId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createARoom != null) {
      return createARoom(roomName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult createARoom(_CreateARoom value),
    @required TResult joinThisChatroom(_JoinThisChatroom value),
    @required TResult openThisChatroom(_OpenThisChatroom value),
  }) {
    assert(started != null);
    assert(createARoom != null);
    assert(joinThisChatroom != null);
    assert(openThisChatroom != null);
    return createARoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult createARoom(_CreateARoom value),
    TResult joinThisChatroom(_JoinThisChatroom value),
    TResult openThisChatroom(_OpenThisChatroom value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createARoom != null) {
      return createARoom(this);
    }
    return orElse();
  }
}

abstract class _CreateARoom implements ChatroomEvent {
  const factory _CreateARoom({@required String roomName}) = _$_CreateARoom;

  String get roomName;
  @JsonKey(ignore: true)
  _$CreateARoomCopyWith<_CreateARoom> get copyWith;
}

/// @nodoc
abstract class _$JoinThisChatroomCopyWith<$Res> {
  factory _$JoinThisChatroomCopyWith(
          _JoinThisChatroom value, $Res Function(_JoinThisChatroom) then) =
      __$JoinThisChatroomCopyWithImpl<$Res>;
  $Res call({String roomId});
}

/// @nodoc
class __$JoinThisChatroomCopyWithImpl<$Res>
    extends _$ChatroomEventCopyWithImpl<$Res>
    implements _$JoinThisChatroomCopyWith<$Res> {
  __$JoinThisChatroomCopyWithImpl(
      _JoinThisChatroom _value, $Res Function(_JoinThisChatroom) _then)
      : super(_value, (v) => _then(v as _JoinThisChatroom));

  @override
  _JoinThisChatroom get _value => super._value as _JoinThisChatroom;

  @override
  $Res call({
    Object roomId = freezed,
  }) {
    return _then(_JoinThisChatroom(
      roomId == freezed ? _value.roomId : roomId as String,
    ));
  }
}

/// @nodoc
class _$_JoinThisChatroom implements _JoinThisChatroom {
  const _$_JoinThisChatroom(@required this.roomId) : assert(roomId != null);

  @override
  final String roomId;

  @override
  String toString() {
    return 'ChatroomEvent.joinThisChatroom(roomId: $roomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JoinThisChatroom &&
            (identical(other.roomId, roomId) ||
                const DeepCollectionEquality().equals(other.roomId, roomId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roomId);

  @JsonKey(ignore: true)
  @override
  _$JoinThisChatroomCopyWith<_JoinThisChatroom> get copyWith =>
      __$JoinThisChatroomCopyWithImpl<_JoinThisChatroom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult createARoom(String roomName),
    @required TResult joinThisChatroom(@required String roomId),
    @required TResult openThisChatroom(String chatroomId),
  }) {
    assert(started != null);
    assert(createARoom != null);
    assert(joinThisChatroom != null);
    assert(openThisChatroom != null);
    return joinThisChatroom(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult createARoom(String roomName),
    TResult joinThisChatroom(@required String roomId),
    TResult openThisChatroom(String chatroomId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinThisChatroom != null) {
      return joinThisChatroom(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult createARoom(_CreateARoom value),
    @required TResult joinThisChatroom(_JoinThisChatroom value),
    @required TResult openThisChatroom(_OpenThisChatroom value),
  }) {
    assert(started != null);
    assert(createARoom != null);
    assert(joinThisChatroom != null);
    assert(openThisChatroom != null);
    return joinThisChatroom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult createARoom(_CreateARoom value),
    TResult joinThisChatroom(_JoinThisChatroom value),
    TResult openThisChatroom(_OpenThisChatroom value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinThisChatroom != null) {
      return joinThisChatroom(this);
    }
    return orElse();
  }
}

abstract class _JoinThisChatroom implements ChatroomEvent {
  const factory _JoinThisChatroom(@required String roomId) =
      _$_JoinThisChatroom;

  String get roomId;
  @JsonKey(ignore: true)
  _$JoinThisChatroomCopyWith<_JoinThisChatroom> get copyWith;
}

/// @nodoc
abstract class _$OpenThisChatroomCopyWith<$Res> {
  factory _$OpenThisChatroomCopyWith(
          _OpenThisChatroom value, $Res Function(_OpenThisChatroom) then) =
      __$OpenThisChatroomCopyWithImpl<$Res>;
  $Res call({String chatroomId});
}

/// @nodoc
class __$OpenThisChatroomCopyWithImpl<$Res>
    extends _$ChatroomEventCopyWithImpl<$Res>
    implements _$OpenThisChatroomCopyWith<$Res> {
  __$OpenThisChatroomCopyWithImpl(
      _OpenThisChatroom _value, $Res Function(_OpenThisChatroom) _then)
      : super(_value, (v) => _then(v as _OpenThisChatroom));

  @override
  _OpenThisChatroom get _value => super._value as _OpenThisChatroom;

  @override
  $Res call({
    Object chatroomId = freezed,
  }) {
    return _then(_OpenThisChatroom(
      chatroomId:
          chatroomId == freezed ? _value.chatroomId : chatroomId as String,
    ));
  }
}

/// @nodoc
class _$_OpenThisChatroom implements _OpenThisChatroom {
  const _$_OpenThisChatroom({@required this.chatroomId})
      : assert(chatroomId != null);

  @override
  final String chatroomId;

  @override
  String toString() {
    return 'ChatroomEvent.openThisChatroom(chatroomId: $chatroomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OpenThisChatroom &&
            (identical(other.chatroomId, chatroomId) ||
                const DeepCollectionEquality()
                    .equals(other.chatroomId, chatroomId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatroomId);

  @JsonKey(ignore: true)
  @override
  _$OpenThisChatroomCopyWith<_OpenThisChatroom> get copyWith =>
      __$OpenThisChatroomCopyWithImpl<_OpenThisChatroom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult createARoom(String roomName),
    @required TResult joinThisChatroom(@required String roomId),
    @required TResult openThisChatroom(String chatroomId),
  }) {
    assert(started != null);
    assert(createARoom != null);
    assert(joinThisChatroom != null);
    assert(openThisChatroom != null);
    return openThisChatroom(chatroomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult createARoom(String roomName),
    TResult joinThisChatroom(@required String roomId),
    TResult openThisChatroom(String chatroomId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (openThisChatroom != null) {
      return openThisChatroom(chatroomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult createARoom(_CreateARoom value),
    @required TResult joinThisChatroom(_JoinThisChatroom value),
    @required TResult openThisChatroom(_OpenThisChatroom value),
  }) {
    assert(started != null);
    assert(createARoom != null);
    assert(joinThisChatroom != null);
    assert(openThisChatroom != null);
    return openThisChatroom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult createARoom(_CreateARoom value),
    TResult joinThisChatroom(_JoinThisChatroom value),
    TResult openThisChatroom(_OpenThisChatroom value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (openThisChatroom != null) {
      return openThisChatroom(this);
    }
    return orElse();
  }
}

abstract class _OpenThisChatroom implements ChatroomEvent {
  const factory _OpenThisChatroom({@required String chatroomId}) =
      _$_OpenThisChatroom;

  String get chatroomId;
  @JsonKey(ignore: true)
  _$OpenThisChatroomCopyWith<_OpenThisChatroom> get copyWith;
}

/// @nodoc
class _$ChatroomStateTearOff {
  const _$ChatroomStateTearOff();

// ignore: unused_element
  _ChatroomState call(
      {bool isChatroomEmpty,
      bool isLoading,
      UserModel user,
      bool isTryingToJoinChatroom,
      String roomId,
      Query query}) {
    return _ChatroomState(
      isChatroomEmpty: isChatroomEmpty,
      isLoading: isLoading,
      user: user,
      isTryingToJoinChatroom: isTryingToJoinChatroom,
      roomId: roomId,
      query: query,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChatroomState = _$ChatroomStateTearOff();

/// @nodoc
mixin _$ChatroomState {
  bool get isChatroomEmpty;
  bool get isLoading;
  UserModel get user;
  bool get isTryingToJoinChatroom;
  String get roomId;
  Query get query;

  @JsonKey(ignore: true)
  $ChatroomStateCopyWith<ChatroomState> get copyWith;
}

/// @nodoc
abstract class $ChatroomStateCopyWith<$Res> {
  factory $ChatroomStateCopyWith(
          ChatroomState value, $Res Function(ChatroomState) then) =
      _$ChatroomStateCopyWithImpl<$Res>;
  $Res call(
      {bool isChatroomEmpty,
      bool isLoading,
      UserModel user,
      bool isTryingToJoinChatroom,
      String roomId,
      Query query});
}

/// @nodoc
class _$ChatroomStateCopyWithImpl<$Res>
    implements $ChatroomStateCopyWith<$Res> {
  _$ChatroomStateCopyWithImpl(this._value, this._then);

  final ChatroomState _value;
  // ignore: unused_field
  final $Res Function(ChatroomState) _then;

  @override
  $Res call({
    Object isChatroomEmpty = freezed,
    Object isLoading = freezed,
    Object user = freezed,
    Object isTryingToJoinChatroom = freezed,
    Object roomId = freezed,
    Object query = freezed,
  }) {
    return _then(_value.copyWith(
      isChatroomEmpty: isChatroomEmpty == freezed
          ? _value.isChatroomEmpty
          : isChatroomEmpty as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      user: user == freezed ? _value.user : user as UserModel,
      isTryingToJoinChatroom: isTryingToJoinChatroom == freezed
          ? _value.isTryingToJoinChatroom
          : isTryingToJoinChatroom as bool,
      roomId: roomId == freezed ? _value.roomId : roomId as String,
      query: query == freezed ? _value.query : query as Query,
    ));
  }
}

/// @nodoc
abstract class _$ChatroomStateCopyWith<$Res>
    implements $ChatroomStateCopyWith<$Res> {
  factory _$ChatroomStateCopyWith(
          _ChatroomState value, $Res Function(_ChatroomState) then) =
      __$ChatroomStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isChatroomEmpty,
      bool isLoading,
      UserModel user,
      bool isTryingToJoinChatroom,
      String roomId,
      Query query});
}

/// @nodoc
class __$ChatroomStateCopyWithImpl<$Res>
    extends _$ChatroomStateCopyWithImpl<$Res>
    implements _$ChatroomStateCopyWith<$Res> {
  __$ChatroomStateCopyWithImpl(
      _ChatroomState _value, $Res Function(_ChatroomState) _then)
      : super(_value, (v) => _then(v as _ChatroomState));

  @override
  _ChatroomState get _value => super._value as _ChatroomState;

  @override
  $Res call({
    Object isChatroomEmpty = freezed,
    Object isLoading = freezed,
    Object user = freezed,
    Object isTryingToJoinChatroom = freezed,
    Object roomId = freezed,
    Object query = freezed,
  }) {
    return _then(_ChatroomState(
      isChatroomEmpty: isChatroomEmpty == freezed
          ? _value.isChatroomEmpty
          : isChatroomEmpty as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      user: user == freezed ? _value.user : user as UserModel,
      isTryingToJoinChatroom: isTryingToJoinChatroom == freezed
          ? _value.isTryingToJoinChatroom
          : isTryingToJoinChatroom as bool,
      roomId: roomId == freezed ? _value.roomId : roomId as String,
      query: query == freezed ? _value.query : query as Query,
    ));
  }
}

/// @nodoc
class _$_ChatroomState implements _ChatroomState {
  _$_ChatroomState(
      {this.isChatroomEmpty,
      this.isLoading,
      this.user,
      this.isTryingToJoinChatroom,
      this.roomId,
      this.query});

  @override
  final bool isChatroomEmpty;
  @override
  final bool isLoading;
  @override
  final UserModel user;
  @override
  final bool isTryingToJoinChatroom;
  @override
  final String roomId;
  @override
  final Query query;

  @override
  String toString() {
    return 'ChatroomState(isChatroomEmpty: $isChatroomEmpty, isLoading: $isLoading, user: $user, isTryingToJoinChatroom: $isTryingToJoinChatroom, roomId: $roomId, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatroomState &&
            (identical(other.isChatroomEmpty, isChatroomEmpty) ||
                const DeepCollectionEquality()
                    .equals(other.isChatroomEmpty, isChatroomEmpty)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isTryingToJoinChatroom, isTryingToJoinChatroom) ||
                const DeepCollectionEquality().equals(
                    other.isTryingToJoinChatroom, isTryingToJoinChatroom)) &&
            (identical(other.roomId, roomId) ||
                const DeepCollectionEquality().equals(other.roomId, roomId)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isChatroomEmpty) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isTryingToJoinChatroom) ^
      const DeepCollectionEquality().hash(roomId) ^
      const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$ChatroomStateCopyWith<_ChatroomState> get copyWith =>
      __$ChatroomStateCopyWithImpl<_ChatroomState>(this, _$identity);
}

abstract class _ChatroomState implements ChatroomState {
  factory _ChatroomState(
      {bool isChatroomEmpty,
      bool isLoading,
      UserModel user,
      bool isTryingToJoinChatroom,
      String roomId,
      Query query}) = _$_ChatroomState;

  @override
  bool get isChatroomEmpty;
  @override
  bool get isLoading;
  @override
  UserModel get user;
  @override
  bool get isTryingToJoinChatroom;
  @override
  String get roomId;
  @override
  Query get query;
  @override
  @JsonKey(ignore: true)
  _$ChatroomStateCopyWith<_ChatroomState> get copyWith;
}
