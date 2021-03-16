// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _IsLoggedIn isLoggedIn() {
    return const _IsLoggedIn();
  }

// ignore: unused_element
  _IsLoggedOut isLoggedOut() {
    return const _IsLoggedOut();
  }

// ignore: unused_element
  _Login login() {
    return const _Login();
  }

// ignore: unused_element
  _Logout logout() {
    return const _Logout();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult isLoggedIn(),
    @required TResult isLoggedOut(),
    @required TResult login(),
    @required TResult logout(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult isLoggedIn(),
    TResult isLoggedOut(),
    TResult login(),
    TResult logout(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult isLoggedIn(_IsLoggedIn value),
    @required TResult isLoggedOut(_IsLoggedOut value),
    @required TResult login(_Login value),
    @required TResult logout(_Logout value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult isLoggedIn(_IsLoggedIn value),
    TResult isLoggedOut(_IsLoggedOut value),
    TResult login(_Login value),
    TResult logout(_Logout value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
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
    return 'AuthenticationEvent.started()';
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
    @required TResult isLoggedIn(),
    @required TResult isLoggedOut(),
    @required TResult login(),
    @required TResult logout(),
  }) {
    assert(started != null);
    assert(isLoggedIn != null);
    assert(isLoggedOut != null);
    assert(login != null);
    assert(logout != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult isLoggedIn(),
    TResult isLoggedOut(),
    TResult login(),
    TResult logout(),
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
    @required TResult isLoggedIn(_IsLoggedIn value),
    @required TResult isLoggedOut(_IsLoggedOut value),
    @required TResult login(_Login value),
    @required TResult logout(_Logout value),
  }) {
    assert(started != null);
    assert(isLoggedIn != null);
    assert(isLoggedOut != null);
    assert(login != null);
    assert(logout != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult isLoggedIn(_IsLoggedIn value),
    TResult isLoggedOut(_IsLoggedOut value),
    TResult login(_Login value),
    TResult logout(_Logout value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthenticationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$IsLoggedInCopyWith<$Res> {
  factory _$IsLoggedInCopyWith(
          _IsLoggedIn value, $Res Function(_IsLoggedIn) then) =
      __$IsLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoggedInCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$IsLoggedInCopyWith<$Res> {
  __$IsLoggedInCopyWithImpl(
      _IsLoggedIn _value, $Res Function(_IsLoggedIn) _then)
      : super(_value, (v) => _then(v as _IsLoggedIn));

  @override
  _IsLoggedIn get _value => super._value as _IsLoggedIn;
}

/// @nodoc
class _$_IsLoggedIn implements _IsLoggedIn {
  const _$_IsLoggedIn();

  @override
  String toString() {
    return 'AuthenticationEvent.isLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult isLoggedIn(),
    @required TResult isLoggedOut(),
    @required TResult login(),
    @required TResult logout(),
  }) {
    assert(started != null);
    assert(isLoggedIn != null);
    assert(isLoggedOut != null);
    assert(login != null);
    assert(logout != null);
    return isLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult isLoggedIn(),
    TResult isLoggedOut(),
    TResult login(),
    TResult logout(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isLoggedIn != null) {
      return isLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult isLoggedIn(_IsLoggedIn value),
    @required TResult isLoggedOut(_IsLoggedOut value),
    @required TResult login(_Login value),
    @required TResult logout(_Logout value),
  }) {
    assert(started != null);
    assert(isLoggedIn != null);
    assert(isLoggedOut != null);
    assert(login != null);
    assert(logout != null);
    return isLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult isLoggedIn(_IsLoggedIn value),
    TResult isLoggedOut(_IsLoggedOut value),
    TResult login(_Login value),
    TResult logout(_Logout value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isLoggedIn != null) {
      return isLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _IsLoggedIn implements AuthenticationEvent {
  const factory _IsLoggedIn() = _$_IsLoggedIn;
}

/// @nodoc
abstract class _$IsLoggedOutCopyWith<$Res> {
  factory _$IsLoggedOutCopyWith(
          _IsLoggedOut value, $Res Function(_IsLoggedOut) then) =
      __$IsLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoggedOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$IsLoggedOutCopyWith<$Res> {
  __$IsLoggedOutCopyWithImpl(
      _IsLoggedOut _value, $Res Function(_IsLoggedOut) _then)
      : super(_value, (v) => _then(v as _IsLoggedOut));

  @override
  _IsLoggedOut get _value => super._value as _IsLoggedOut;
}

/// @nodoc
class _$_IsLoggedOut implements _IsLoggedOut {
  const _$_IsLoggedOut();

  @override
  String toString() {
    return 'AuthenticationEvent.isLoggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult isLoggedIn(),
    @required TResult isLoggedOut(),
    @required TResult login(),
    @required TResult logout(),
  }) {
    assert(started != null);
    assert(isLoggedIn != null);
    assert(isLoggedOut != null);
    assert(login != null);
    assert(logout != null);
    return isLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult isLoggedIn(),
    TResult isLoggedOut(),
    TResult login(),
    TResult logout(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isLoggedOut != null) {
      return isLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult isLoggedIn(_IsLoggedIn value),
    @required TResult isLoggedOut(_IsLoggedOut value),
    @required TResult login(_Login value),
    @required TResult logout(_Logout value),
  }) {
    assert(started != null);
    assert(isLoggedIn != null);
    assert(isLoggedOut != null);
    assert(login != null);
    assert(logout != null);
    return isLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult isLoggedIn(_IsLoggedIn value),
    TResult isLoggedOut(_IsLoggedOut value),
    TResult login(_Login value),
    TResult logout(_Logout value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isLoggedOut != null) {
      return isLoggedOut(this);
    }
    return orElse();
  }
}

abstract class _IsLoggedOut implements AuthenticationEvent {
  const factory _IsLoggedOut() = _$_IsLoggedOut;
}

/// @nodoc
abstract class _$LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;
}

/// @nodoc
class _$_Login implements _Login {
  const _$_Login();

  @override
  String toString() {
    return 'AuthenticationEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult isLoggedIn(),
    @required TResult isLoggedOut(),
    @required TResult login(),
    @required TResult logout(),
  }) {
    assert(started != null);
    assert(isLoggedIn != null);
    assert(isLoggedOut != null);
    assert(login != null);
    assert(logout != null);
    return login();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult isLoggedIn(),
    TResult isLoggedOut(),
    TResult login(),
    TResult logout(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult isLoggedIn(_IsLoggedIn value),
    @required TResult isLoggedOut(_IsLoggedOut value),
    @required TResult login(_Login value),
    @required TResult logout(_Logout value),
  }) {
    assert(started != null);
    assert(isLoggedIn != null);
    assert(isLoggedOut != null);
    assert(login != null);
    assert(logout != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult isLoggedIn(_IsLoggedIn value),
    TResult isLoggedOut(_IsLoggedOut value),
    TResult login(_Login value),
    TResult logout(_Logout value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthenticationEvent {
  const factory _Login() = _$_Login;
}

/// @nodoc
abstract class _$LogoutCopyWith<$Res> {
  factory _$LogoutCopyWith(_Logout value, $Res Function(_Logout) then) =
      __$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LogoutCopyWith<$Res> {
  __$LogoutCopyWithImpl(_Logout _value, $Res Function(_Logout) _then)
      : super(_value, (v) => _then(v as _Logout));

  @override
  _Logout get _value => super._value as _Logout;
}

/// @nodoc
class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult isLoggedIn(),
    @required TResult isLoggedOut(),
    @required TResult login(),
    @required TResult logout(),
  }) {
    assert(started != null);
    assert(isLoggedIn != null);
    assert(isLoggedOut != null);
    assert(login != null);
    assert(logout != null);
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult isLoggedIn(),
    TResult isLoggedOut(),
    TResult login(),
    TResult logout(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult isLoggedIn(_IsLoggedIn value),
    @required TResult isLoggedOut(_IsLoggedOut value),
    @required TResult login(_Login value),
    @required TResult logout(_Logout value),
  }) {
    assert(started != null);
    assert(isLoggedIn != null);
    assert(isLoggedOut != null);
    assert(login != null);
    assert(logout != null);
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult isLoggedIn(_IsLoggedIn value),
    TResult isLoggedOut(_IsLoggedOut value),
    TResult login(_Login value),
    TResult logout(_Logout value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthenticationEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

// ignore: unused_element
  _AuthenticationState call({bool isLoggedIn, bool isChecking}) {
    return _AuthenticationState(
      isLoggedIn: isLoggedIn,
      isChecking: isChecking,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  bool get isLoggedIn;
  bool get isChecking;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call({bool isLoggedIn, bool isChecking});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object isLoggedIn = freezed,
    Object isChecking = freezed,
  }) {
    return _then(_value.copyWith(
      isLoggedIn:
          isLoggedIn == freezed ? _value.isLoggedIn : isLoggedIn as bool,
      isChecking:
          isChecking == freezed ? _value.isChecking : isChecking as bool,
    ));
  }
}

/// @nodoc
abstract class _$AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationStateCopyWith(_AuthenticationState value,
          $Res Function(_AuthenticationState) then) =
      __$AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoggedIn, bool isChecking});
}

/// @nodoc
class __$AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticationStateCopyWith<$Res> {
  __$AuthenticationStateCopyWithImpl(
      _AuthenticationState _value, $Res Function(_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _AuthenticationState));

  @override
  _AuthenticationState get _value => super._value as _AuthenticationState;

  @override
  $Res call({
    Object isLoggedIn = freezed,
    Object isChecking = freezed,
  }) {
    return _then(_AuthenticationState(
      isLoggedIn:
          isLoggedIn == freezed ? _value.isLoggedIn : isLoggedIn as bool,
      isChecking:
          isChecking == freezed ? _value.isChecking : isChecking as bool,
    ));
  }
}

/// @nodoc
class _$_AuthenticationState implements _AuthenticationState {
  _$_AuthenticationState({this.isLoggedIn, this.isChecking});

  @override
  final bool isLoggedIn;
  @override
  final bool isChecking;

  @override
  String toString() {
    return 'AuthenticationState(isLoggedIn: $isLoggedIn, isChecking: $isChecking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationState &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                const DeepCollectionEquality()
                    .equals(other.isLoggedIn, isLoggedIn)) &&
            (identical(other.isChecking, isChecking) ||
                const DeepCollectionEquality()
                    .equals(other.isChecking, isChecking)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoggedIn) ^
      const DeepCollectionEquality().hash(isChecking);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      __$AuthenticationStateCopyWithImpl<_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  factory _AuthenticationState({bool isLoggedIn, bool isChecking}) =
      _$_AuthenticationState;

  @override
  bool get isLoggedIn;
  @override
  bool get isChecking;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith;
}
