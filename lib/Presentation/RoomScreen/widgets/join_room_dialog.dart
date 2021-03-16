import 'package:auto_route/auto_route.dart';
import 'package:chat_application_demo/Application/chatroom/bloc/chatroom_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JoinRoomDialog {
  final BuildContext blocContext;
  final TextEditingController controller;
  JoinRoomDialog({this.controller, this.blocContext}) {
    showDialog(
        context: blocContext,
        useSafeArea: true,
        builder: (context) => BlocProvider(
            create: (context) => ChatroomBloc()..add(ChatroomEvent.started()),
            child: BlocBuilder<ChatroomBloc, ChatroomState>(
                builder: (context, state) => AlertDialog(
                      content: TextFormField(
                        controller: controller,
                        decoration:
                            InputDecoration(hintText: "Enter room code"),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              BlocProvider.of<ChatroomBloc>(context).add(
                                  ChatroomEvent.joinThisChatroom(
                                      controller.text));
                              controller.clear();

                              ExtendedNavigator.of(context).pop();
                            },
                            child: Text("Join"))
                      ],
                    ))));
  }
}
