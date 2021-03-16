part of 'chat_bloc.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started(
      {@required UserModel currentUser,
      @required ChatroomModel chatroomModel}) = _Started;
  const factory ChatEvent.sendThisMessage({@required String message}) =
      _sendThisMessage;
}
