import 'package:chat_application_demo/Domain/core/chat_model.dart';
import 'package:chat_application_demo/Domain/core/chat_room_model.dart';

abstract class IPushNotifications {
  void initialize({bool isThisWeb});
  Future<void> sendNotifications(
      {ChatModel chatModel, ChatroomModel chatroomModel, String uid});
  Future<void> getNotifications(Map<String, dynamic> data, bool isWeb);
}
