import 'package:auto_route/auto_route.dart';
import 'package:chat_application_demo/Application/chatroom/bloc/chatroom_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateRoomDialog {
  final BuildContext blocContext;
  final TextEditingController controller;
  CreateRoomDialog({this.controller, this.blocContext}) {
    showDialog(
        context: blocContext,
        useSafeArea: true,
        builder: (context) => BlocProvider(
            create: (context) => ChatroomBloc(),
            child: BlocBuilder<ChatroomBloc, ChatroomState>(
                builder: (context, state) => AlertDialog(
                      content: TextFormField(
                        controller: controller,
                        decoration: InputDecoration(hintText: "Chatroom name"),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              BlocProvider.of<ChatroomBloc>(context).add(
                                  ChatroomEvent.createARoom(
                                      roomName: controller.text));
                              controller.clear();

                              ExtendedNavigator.of(context).pop();
                            },
                            child: Text("Create"))
                      ],
                    ))));
  }
}
