import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_application_demo/Infrastructure/auth/auth_facade.dart';
import 'package:chat_application_demo/Infrastructure/services/push_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
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
      if (kIsWeb) {
        PushNotifications().initialize(isThisWeb: true, ctx: e.ctx);
      } else {
        PushNotifications().initialize(isThisWeb: false, ctx: e.ctx);
      }
      yield state.copyWith.call(isChecking: true, isLoggedIn: false);
      final bool userStatus = await _authFacade.isUserSignedIn();
      print(userStatus);
      if (userStatus) {
        print(userStatus);
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
