import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:chat_application_demo/Application/auth/bloc/authentication_bloc.dart';
import 'package:chat_application_demo/Application/chatroom/bloc/chatroom_bloc.dart';
import 'package:chat_application_demo/Domain/core/chat_room_model.dart';
import 'package:chat_application_demo/Presentation/RoomScreen/widgets/chatroom_tile.dart';
import 'package:chat_application_demo/Presentation/RoomScreen/widgets/create_room_dialog.dart';
import 'package:chat_application_demo/Presentation/RoomScreen/widgets/join_room_dialog.dart';
import 'package:chat_application_demo/routes.gr.dart';
import 'package:firestore_ui/animated_firestore_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoomScreen extends StatefulWidget {
  @override
  _RoomScreenState createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  TextEditingController _controller;
  TextEditingController _joinRoomController;
  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController();
    _joinRoomController = new TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    _joinRoomController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Welcome Back"),
          automaticallyImplyLeading: false,
          actions: [
            BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, state) => IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: () async {
                      await BlocProvider.of<AuthenticationBloc>(context)
                          .add(AuthenticationEvent.logout());
                      ExtendedNavigator.of(context)
                          .popAndPush(Routes.loginScreen);
                    }))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          OutlinedButton(
                              onPressed: () {
                                ExtendedNavigator.of(context).pop();
                                JoinRoomDialog(
                                    blocContext: context,
                                    controller: _joinRoomController);
                              },
                              child: Text("Join")),
                          OutlinedButton(
                              onPressed: () {
                                ExtendedNavigator.of(context).pop();
                                CreateRoomDialog(
                                    blocContext: context,
                                    controller: _controller);
                              },
                              child: Text("Create"))
                        ],
                      ),
                    ));
          },
          child: Icon(Icons.add),
        ),
        body: BlocProvider(
          create: (context) => ChatroomBloc()..add(ChatroomEvent.started()),
          child: BlocConsumer<ChatroomBloc, ChatroomState>(
              listener: (context, state) {
            if (state.isTryingToJoinChatroom) {
              showDialog(
                  context: context,
                  useSafeArea: true,
                  barrierDismissible: false,
                  builder: (context) => AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircularProgressIndicator(),
                            Text("Please wait joining...")
                          ],
                        ),
                      ));
            }
            ;
          }, builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return FirestoreAnimatedList(
                  query: state.query,
                  shrinkWrap: true,
                  defaultChild: Center(
                    child: CircularProgressIndicator(),
                  ),
                  itemBuilder: (context, snapshot, animation, i) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: ChatroomTile(
                          chatroomModel: ChatroomModel(snap: snapshot),
                          userModel: state.user,
                        ),
                      ));
            }
          }),
        ),
      ),
    );
  }
}
