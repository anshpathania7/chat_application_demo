import 'package:auto_route/auto_route.dart';
import 'package:chat_application_demo/Application/chat/bloc/chat_bloc.dart';
import 'package:chat_application_demo/Domain/core/chat_model.dart';
import 'package:chat_application_demo/Domain/core/chat_room_model.dart';
import 'package:chat_application_demo/Domain/core/user_model.dart';
import 'package:chat_application_demo/Infrastructure/services/push_notifications.dart';
import 'package:chat_application_demo/Presentation/ChatScreen/widgets/chat_bubble.dart';
import 'package:firestore_ui/animated_firestore_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  final UserModel userModel;
  final ChatroomModel chatroomModel;
  const ChatScreen({Key key, this.userModel, this.chatroomModel})
      : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc()
        ..add(ChatEvent.started(
            currentUser: widget.userModel,
            chatroomModel: widget.chatroomModel)),
      child: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) => (state.dbQuery == null)
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : SafeArea(
                  child: Scaffold(
                    resizeToAvoidBottomInset: true,
                    appBar: AppBar(
                      leading: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            ExtendedNavigator.of(context).pop();
                            PushNotifications()
                                .getInstance()
                                .setRoomId(roomid: "");
                          }),
                      title: Text(widget.chatroomModel.chatroomName),
                    ),
                    body: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.8,
                            child: FirestoreAnimatedList(
                                shrinkWrap: true,
                                query: state.dbQuery,
                                itemBuilder: (context, snap, animation, i) =>
                                    ChatBubble(
                                      chatModel: ChatModel("", "", 0, "")
                                        ..fromSnap(snap: snap),
                                      userModel: state.userModel,
                                    )),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: TextFormField(
                              controller: _controller,
                              decoration: InputDecoration(
                                  hintText: "Please type in your message...",
                                  suffixIcon: IconButton(
                                      icon: Icon(Icons.send_outlined),
                                      onPressed: () {
                                        BlocProvider.of<ChatBloc>(context).add(
                                            ChatEvent.sendThisMessage(
                                                message: _controller.text));
                                        _controller.clear();
                                      }),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                          style: BorderStyle.solid))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
    );
  }
}
