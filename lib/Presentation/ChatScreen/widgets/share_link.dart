import 'package:auto_route/auto_route.dart';
import 'package:chat_application_demo/Domain/core/chat_room_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';

class ShareLink extends StatelessWidget {
  final ChatroomModel chatroomModel;
  final BuildContext scaffoldContext;

  const ShareLink({Key key, this.chatroomModel, this.scaffoldContext})
      : super(key: key);
  @override
  Widget build(context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            useSafeArea: true,
            barrierDismissible: true,
            builder: (context) => AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Your Share Link is Generated !',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.grey, width: 1.2),
                          color: Colors.white24,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              Text(
                                chatroomModel.getChatroomIdOnly(),
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              Spacer(),
                              IconButton(
                                  icon: Icon(Icons.copy),
                                  onPressed: () async {
                                    await Clipboard.setData(new ClipboardData(
                                        text: chatroomModel
                                            .getShareableChatroomId()));
                                    ExtendedNavigator.of(context).pop();
                                    ScaffoldMessenger.of(scaffoldContext)
                                        .showSnackBar(SnackBar(
                                            behavior: SnackBarBehavior.floating,
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                side: BorderSide(
                                                    color: Colors.blue,
                                                    width: 1)),
                                            elevation: 2,
                                            content: Text(
                                              'Succesfully Copied !',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            )));
                                  })
                            ],
                          ),
                        ),
                      ),
                      if (kIsWeb) ...[
                        const SizedBox(
                          height: 12,
                        ),
                        Text("Copy and share above given link :D"),
                      ],
                    ],
                  ),
                  actions: [
                    if (!kIsWeb) ...[
                      OutlinedButton(
                          onPressed: () async {
                            Share.share(
                              chatroomModel.getShareableChatroomId(),
                            );

                            ExtendedNavigator.of(context).pop();
                          },
                          child: Text("Share",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18)))
                    ]
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
