import 'package:auto_route/auto_route.dart';
import 'package:chat_application_demo/Domain/core/chat_room_model.dart';
import 'package:chat_application_demo/Domain/core/user_model.dart';
import 'package:chat_application_demo/Infrastructure/services/push_notifications.dart';
import 'package:chat_application_demo/Presentation/ChatScreen/widgets/share_link.dart';
import 'package:chat_application_demo/routes.gr.dart';
import 'package:flutter/material.dart';

class ChatroomTile extends StatelessWidget {
  final ChatroomModel chatroomModel;
  final UserModel userModel;
  final BuildContext scaffoldContext;

  const ChatroomTile(
      {Key key, this.chatroomModel, this.userModel, this.scaffoldContext})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        PushNotifications()
            .getInstance()
            .setRoomId(roomid: chatroomModel.chatroomId);
        ExtendedNavigator.of(context).push(Routes.chatScreen,
            arguments: ChatScreenArguments(
                chatroomModel: chatroomModel,
                userModel: userModel,
                sentViaForegroundNoti: false));
      },
      child: Container(
        height: 70,
        width: 200,
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              chatroomModel.chatroomName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            ShareLink(
              chatroomModel: chatroomModel,
              scaffoldContext: scaffoldContext,
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
