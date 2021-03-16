import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_application_demo/Infrastructure/auth/auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationState.initial());

  AuthFacade _authFacade = new AuthFacade();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      final bool userStatus = await _authFacade.isUserSignedIn();
      if (userStatus) {
        yield state.copyWith.call(isChecking: false, isLoggedIn: true);
      } else {
        yield state.copyWith.call(isChecking: false, isLoggedIn: false);
      }
    }, isLoggedIn: (e) async* {
      yield state.copyWith.call(isLoggedIn: true, isChecking: false);
    }, isLoggedOut: (e) async* {
      yield state.copyWith.call(isLoggedIn: false, isChecking: false);
    }, login: (e) async* {
      yield state.copyWith.call(isLoggedIn: false, isChecking: true);
      final user = await _authFacade.registerUserWithGoogle();
      if (user != null) {
        yield state.copyWith.call(isLoggedIn: true, isChecking: false);
      } else {
        yield state.copyWith.call(isLoggedIn: false, isChecking: false);
      }
    }, logout: (e) async* {
      await _authFacade.signoutUser();
      yield state.copyWith.call(isLoggedIn: false, isChecking: false);
    });
  }
}
