import 'package:chat_application_demo/Domain/core/chat_model.dart';
import 'package:chat_application_demo/Domain/core/chat_room_model.dart';
import 'package:chat_application_demo/Domain/core/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

abstract class IDatabaseFacade {
  Future<bool> sendChatMessage(
      {@required ChatModel chatModel, @required ChatroomModel chatroomModel});
  Future<String> createARoom({@required String roomName});
  Future<Query> getChatroomQuery();
  Query openThisChatroomQuery({@required String chatroomId});
  Future<bool> joinThisChatroom(
      {@required String roomId, @required UserModel userModel});
}
