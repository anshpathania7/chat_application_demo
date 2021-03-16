part of 'chatroom_bloc.dart';

@freezed
abstract class ChatroomState with _$ChatroomState {
  factory ChatroomState(
      {bool isChatroomEmpty,
      bool isLoading,
      UserModel user,
      bool isTryingToJoinChatroom,
      String roomId,
      Query query}) = _ChatroomState;
  factory ChatroomState.initial() =>
      ChatroomState(isLoading: true, isTryingToJoinChatroom: false);
}
