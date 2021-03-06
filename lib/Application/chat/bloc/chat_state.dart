part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  factory ChatState({
    bool loadingMessages,
    ChatroomModel chatroomModel,
    UserModel userModel,
    String rid,
    Query dbQuery,
  }) = _ChatState;
  factory ChatState.initial() => ChatState();
}
