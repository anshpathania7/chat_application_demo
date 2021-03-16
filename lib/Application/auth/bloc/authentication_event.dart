part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.started() = _Started;
  const factory AuthenticationEvent.isLoggedIn() = _IsLoggedIn;
  const factory AuthenticationEvent.isLoggedOut() = _IsLoggedOut;
  const factory AuthenticationEvent.login() = _Login;
  const factory AuthenticationEvent.logout() = _Logout;
}
