// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

// ignore: unused_element
  _Started started(
      {@required UserModel currentUser,
      @required ChatroomModel chatroomModel}) {
    return _Started(
      currentUser: currentUser,
      chatroomModel: chatroomModel,
    );
  }

// ignore: unused_element
  _sendThisMessage sendThisMessage({@required String message}) {
    return _sendThisMessage(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult started(UserModel currentUser, ChatroomModel chatroomModel),
    @required TResult sendThisMessage(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(UserModel currentUser, ChatroomModel chatroomModel),
    TResult sendThisMessage(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult sendThisMessage(_sendThisMessage value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult sendThisMessage(_sendThisMessage value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({UserModel currentUser, ChatroomModel chatroomModel});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object currentUser = freezed,
    Object chatroomModel = freezed,
  }) {
    return _then(_Started(
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser as UserModel,
      chatroomModel: chatroomModel == freezed
          ? _value.chatroomModel
          : chatroomModel as ChatroomModel,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started({@required this.currentUser, @required this.chatroomModel})
      : assert(currentUser != null),
        assert(chatroomModel != null);

  @override
  final UserModel currentUser;
  @override
  final ChatroomModel chatroomModel;

  @override
  String toString() {
    return 'ChatEvent.started(currentUser: $currentUser, chatroomModel: $chatroomModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)) &&
            (identical(other.chatroomModel, chatroomModel) ||
                const DeepCollectionEquality()
                    .equals(other.chatroomModel, chatroomModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentUser) ^
      const DeepCollectionEquality().hash(chatroomModel);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult started(UserModel currentUser, ChatroomModel chatroomModel),
    @required TResult sendThisMessage(String message),
  }) {
    assert(started != null);
    assert(sendThisMessage != null);
    return started(currentUser, chatroomModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(UserModel currentUser, ChatroomModel chatroomModel),
    TResult sendThisMessage(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(currentUser, chatroomModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult sendThisMessage(_sendThisMessage value),
  }) {
    assert(started != null);
    assert(sendThisMessage != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult sendThisMessage(_sendThisMessage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started(
      {@required UserModel currentUser,
      @required ChatroomModel chatroomModel}) = _$_Started;

  UserModel get currentUser;
  ChatroomModel get chatroomModel;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
abstract class _$sendThisMessageCopyWith<$Res> {
  factory _$sendThisMessageCopyWith(
          _sendThisMessage value, $Res Function(_sendThisMessage) then) =
      __$sendThisMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$sendThisMessageCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$sendThisMessageCopyWith<$Res> {
  __$sendThisMessageCopyWithImpl(
      _sendThisMessage _value, $Res Function(_sendThisMessage) _then)
      : super(_value, (v) => _then(v as _sendThisMessage));

  @override
  _sendThisMessage get _value => super._value as _sendThisMessage;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_sendThisMessage(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_sendThisMessage implements _sendThisMessage {
  const _$_sendThisMessage({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.sendThisMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _sendThisMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$sendThisMessageCopyWith<_sendThisMessage> get copyWith =>
      __$sendThisMessageCopyWithImpl<_sendThisMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult started(UserModel currentUser, ChatroomModel chatroomModel),
    @required TResult sendThisMessage(String message),
  }) {
    assert(started != null);
    assert(sendThisMessage != null);
    return sendThisMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(UserModel currentUser, ChatroomModel chatroomModel),
    TResult sendThisMessage(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendThisMessage != null) {
      return sendThisMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult sendThisMessage(_sendThisMessage value),
  }) {
    assert(started != null);
    assert(sendThisMessage != null);
    return sendThisMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult sendThisMessage(_sendThisMessage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendThisMessage != null) {
      return sendThisMessage(this);
    }
    return orElse();
  }
}

abstract class _sendThisMessage implements ChatEvent {
  const factory _sendThisMessage({@required String message}) =
      _$_sendThisMessage;

  String get message;
  @JsonKey(ignore: true)
  _$sendThisMessageCopyWith<_sendThisMessage> get copyWith;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

// ignore: unused_element
  _ChatState call(
      {bool loadingMessages,
      ChatroomModel chatroomModel,
      UserModel userModel,
      Query dbQuery}) {
    return _ChatState(
      loadingMessages: loadingMessages,
      chatroomModel: chatroomModel,
      userModel: userModel,
      dbQuery: dbQuery,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  bool get loadingMessages;
  ChatroomModel get chatroomModel;
  UserModel get userModel;
  Query get dbQuery;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call(
      {bool loadingMessages,
      ChatroomModel chatroomModel,
      UserModel userModel,
      Query dbQuery});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object loadingMessages = freezed,
    Object chatroomModel = freezed,
    Object userModel = freezed,
    Object dbQuery = freezed,
  }) {
    return _then(_value.copyWith(
      loadingMessages: loadingMessages == freezed
          ? _value.loadingMessages
          : loadingMessages as bool,
      chatroomModel: chatroomModel == freezed
          ? _value.chatroomModel
          : chatroomModel as ChatroomModel,
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
      dbQuery: dbQuery == freezed ? _value.dbQuery : dbQuery as Query,
    ));
  }
}

/// @nodoc
abstract class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) then) =
      __$ChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loadingMessages,
      ChatroomModel chatroomModel,
      UserModel userModel,
      Query dbQuery});
}

/// @nodoc
class __$ChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(_ChatState _value, $Res Function(_ChatState) _then)
      : super(_value, (v) => _then(v as _ChatState));

  @override
  _ChatState get _value => super._value as _ChatState;

  @override
  $Res call({
    Object loadingMessages = freezed,
    Object chatroomModel = freezed,
    Object userModel = freezed,
    Object dbQuery = freezed,
  }) {
    return _then(_ChatState(
      loadingMessages: loadingMessages == freezed
          ? _value.loadingMessages
          : loadingMessages as bool,
      chatroomModel: chatroomModel == freezed
          ? _value.chatroomModel
          : chatroomModel as ChatroomModel,
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
      dbQuery: dbQuery == freezed ? _value.dbQuery : dbQuery as Query,
    ));
  }
}

/// @nodoc
class _$_ChatState implements _ChatState {
  _$_ChatState(
      {this.loadingMessages, this.chatroomModel, this.userModel, this.dbQuery});

  @override
  final bool loadingMessages;
  @override
  final ChatroomModel chatroomModel;
  @override
  final UserModel userModel;
  @override
  final Query dbQuery;

  @override
  String toString() {
    return 'ChatState(loadingMessages: $loadingMessages, chatroomModel: $chatroomModel, userModel: $userModel, dbQuery: $dbQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatState &&
            (identical(other.loadingMessages, loadingMessages) ||
                const DeepCollectionEquality()
                    .equals(other.loadingMessages, loadingMessages)) &&
            (identical(other.chatroomModel, chatroomModel) ||
                const DeepCollectionEquality()
                    .equals(other.chatroomModel, chatroomModel)) &&
            (identical(other.userModel, userModel) ||
                const DeepCollectionEquality()
                    .equals(other.userModel, userModel)) &&
            (identical(other.dbQuery, dbQuery) ||
                const DeepCollectionEquality().equals(other.dbQuery, dbQuery)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loadingMessages) ^
      const DeepCollectionEquality().hash(chatroomModel) ^
      const DeepCollectionEquality().hash(userModel) ^
      const DeepCollectionEquality().hash(dbQuery);

  @JsonKey(ignore: true)
  @override
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  factory _ChatState(
      {bool loadingMessages,
      ChatroomModel chatroomModel,
      UserModel userModel,
      Query dbQuery}) = _$_ChatState;

  @override
  bool get loadingMessages;
  @override
  ChatroomModel get chatroomModel;
  @override
  UserModel get userModel;
  @override
  Query get dbQuery;
  @override
  @JsonKey(ignore: true)
  _$ChatStateCopyWith<_ChatState> get copyWith;
}
