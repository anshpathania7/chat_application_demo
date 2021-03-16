import 'package:auto_route/auto_route.dart';
import 'package:chat_application_demo/Domain/core/chat_room_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShareLink extends StatelessWidget {
  final ChatroomModel chatroomModel;

  const ShareLink({Key key, this.chatroomModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            useSafeArea: true,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
                  content: Text("Shareable link generated!"),
                  actions: [
                    OutlinedButton(
                        onPressed: () {
                          Clipboard.setData(new ClipboardData(
                              text: chatroomModel.getShareableChatroomId()));
                          ExtendedNavigator.of(context).pop();
                        },
                        child: Text("copy"))
                  ],
                ));
      },
      child: Container(
        width: 100,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: Colors.blue, width: 1.2, style: BorderStyle.solid),
        ),
        child: Center(
          child: Text(
            "Share",
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
