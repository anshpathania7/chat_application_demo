import 'package:chat_application_demo/Domain/core/chat_model.dart';
import 'package:chat_application_demo/Domain/core/user_model.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final ChatModel chatModel;
  final UserModel userModel;

  const ChatBubble({Key key, this.chatModel, this.userModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const rad = Radius.circular(12);
    final bool notSentByCurrentUser = (chatModel.senderUid != userModel.uid);
    final String message = chatModel.message;
    return Row(
      mainAxisAlignment: (notSentByCurrentUser)
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 2),
          child: Column(
            crossAxisAlignment: notSentByCurrentUser
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: notSentByCurrentUser ? Colors.blue : Colors.white,
                  border: Border.all(color: Colors.blue),
                  borderRadius: notSentByCurrentUser
                      ? BorderRadius.only(
                          bottomRight: rad, topLeft: rad, topRight: rad)
                      : BorderRadius.only(
                          bottomLeft: rad, topLeft: rad, topRight: rad),
                ),
                constraints: BoxConstraints(
                    minHeight: 15,
                    minWidth: 30,
                    maxHeight: 400,
                    maxWidth: MediaQuery.of(context).size.width * 0.65),
                child: Text(
                  message,
                  softWrap: true,
                  maxLines: 20,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 16,
                      color:
                          notSentByCurrentUser ? Colors.white : Colors.black),
                ),
              ),
              if (notSentByCurrentUser) ...[
                Text("sent by " + chatModel.username)
              ]
            ],
          ),
        ),
      ],
    );
  }
}
