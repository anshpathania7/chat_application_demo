import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_application_demo/Domain/core/chat_model.dart';
import 'package:chat_application_demo/Domain/core/chat_room_model.dart';
import 'package:chat_application_demo/Domain/core/user_model.dart';
import 'package:chat_application_demo/Infrastructure/Database/database_facade.dart';
import 'package:chat_application_demo/Infrastructure/services/push_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatState.initial());

  DatabaseFacade _databaseFacade = new DatabaseFacade();

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      final thisdbQuery = _databaseFacade.openThisChatroomQuery(
          chatroomId: e.chatroomModel.chatroomId);
      yield state.copyWith.call(
          chatroomModel: e.chatroomModel,
          userModel: e.currentUser,
          rid: "",
          dbQuery: thisdbQuery,
          loadingMessages: false);
    }, sendThisMessage: (e) async* {
      if (e.message.isNotEmpty) {
        final sentAt = DateTime.now().microsecondsSinceEpoch;
        final ChatModel thisChatModel = ChatModel(
            e.message, state.userModel.uid, sentAt, state.userModel.name);
        print(state.chatroomModel.chatroomId);
        await DatabaseFacade().sendChatMessage(
            chatModel: thisChatModel,
            chatroomModel: state.chatroomModel,
            rid: state.rid);
      }
    }, sentByForegroundNoti: (e) async* {
      final thisdbQuery =
          DatabaseFacade().openThisChatroomQuery(chatroomId: e.rid.trim());
      yield state.copyWith.call(loadingMessages: true, dbQuery: thisdbQuery);
      final UserModel userModel = await DatabaseFacade().getUser();
      final ChatroomModel chatroomModel =
          ChatroomModel.fromNoti(rid: e.rid, rname: e.rname);

      yield state.copyWith.call(
          chatroomModel: chatroomModel,
          userModel: userModel,
          dbQuery: thisdbQuery,
          rid: e.rid,
          loadingMessages: false);
    });
  }
}
