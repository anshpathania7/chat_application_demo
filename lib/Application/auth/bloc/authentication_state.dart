part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState({
    bool isLoggedIn,
    bool isChecking,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() =>
      AuthenticationState(isChecking: false);
}
