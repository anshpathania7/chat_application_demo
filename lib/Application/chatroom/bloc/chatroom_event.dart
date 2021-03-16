part of 'chatroom_bloc.dart';

@freezed
abstract class ChatroomEvent with _$ChatroomEvent {
  const factory ChatroomEvent.started() = _Started;
  const factory ChatroomEvent.createARoom({@required String roomName}) =
      _CreateARoom;
  const factory ChatroomEvent.joinThisChatroom(@required String roomId) =
      _JoinThisChatroom;
  const factory ChatroomEvent.openThisChatroom({@required String chatroomId}) =
      _OpenThisChatroom;
}
