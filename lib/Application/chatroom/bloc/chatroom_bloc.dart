import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_application_demo/Domain/core/user_model.dart';
import 'package:chat_application_demo/Infrastructure/Database/database_facade.dart';
import 'package:chat_application_demo/Infrastructure/auth/auth_facade.dart';
import 'package:chat_application_demo/Infrastructure/services/push_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatroom_event.dart';
part 'chatroom_state.dart';
part 'chatroom_bloc.freezed.dart';

class ChatroomBloc extends Bloc<ChatroomEvent, ChatroomState> {
  ChatroomBloc() : super(ChatroomState.initial());
  DatabaseFacade _databaseFacade = new DatabaseFacade();
  AuthFacade _authFacade = new AuthFacade();

  @override
  Stream<ChatroomState> mapEventToState(
    ChatroomEvent event,
  ) async* {
    yield* event.map(
        started: (e) async* {
          yield state.copyWith.call(isLoading: true);
          final UserModel currentUser = await _authFacade.getSignedInUser();
          final Query firebaseQuery = await _databaseFacade.getChatroomQuery();
          yield state.copyWith
              .call(isLoading: false, query: firebaseQuery, user: currentUser);
        },
        createARoom: (e) async* {
          _databaseFacade.createARoom(roomName: e.roomName);
        },
        openThisChatroom: (e) {},
        joinThisChatroom: (e) async* {
          yield state.copyWith.call(isTryingToJoinChatroom: true);

          await _databaseFacade.joinThisChatroom(
              roomId: e.roomId, userModel: state.user);

          yield state.copyWith.call(isTryingToJoinChatroom: false);
        });
  }
}
