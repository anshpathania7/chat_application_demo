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
          dbQuery: thisdbQuery,
          loadingMessages: false);
    }, sendThisMessage: (e) async* {
      if (e.message.isNotEmpty) {
        final sentAt = DateTime.now().microsecondsSinceEpoch;
        final ChatModel thisChatModel = ChatModel(
            e.message, state.userModel.uid, sentAt, state.userModel.name);
        await _databaseFacade.sendChatMessage(
            chatModel: thisChatModel, chatroomModel: state.chatroomModel);
      }
      ;
    });
  }
}
