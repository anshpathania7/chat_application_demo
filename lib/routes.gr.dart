// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'Domain/core/chat_room_model.dart';
import 'Domain/core/user_model.dart';
import 'Presentation/ChatScreen/chat_screen.dart';
import 'Presentation/LoginScreen/login_screen.dart';
import 'Presentation/RoomScreen/room_screen.dart';
import 'Presentation/SplashScreen/SpashScreen.dart';

class Routes {
  static const String loginScreen = '/login-screen';
  static const String splashScreen = '/';
  static const String roomScreen = '/room-screen';
  static const String chatScreen = '/chat-screen';
  static const all = <String>{
    loginScreen,
    splashScreen,
    roomScreen,
    chatScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.roomScreen, page: RoomScreen),
    RouteDef(Routes.chatScreen, page: ChatScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LoginScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
        settings: data,
      );
    },
    SplashScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SplashScreen(),
        settings: data,
      );
    },
    RoomScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => RoomScreen(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    ChatScreen: (data) {
      final args = data.getArgs<ChatScreenArguments>(
        orElse: () => ChatScreenArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ChatScreen(
          key: args.key,
          userModel: args.userModel,
          chatroomModel: args.chatroomModel,
          sentViaForegroundNoti: args.sentViaForegroundNoti,
          rname: args.rname,
          rid: args.rid,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushLoginScreen() => push<dynamic>(Routes.loginScreen);

  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushRoomScreen() => push<dynamic>(Routes.roomScreen);

  Future<dynamic> pushChatScreen({
    Key key,
    UserModel userModel,
    ChatroomModel chatroomModel,
    bool sentViaForegroundNoti,
    String rname,
    String rid,
  }) =>
      push<dynamic>(
        Routes.chatScreen,
        arguments: ChatScreenArguments(
            key: key,
            userModel: userModel,
            chatroomModel: chatroomModel,
            sentViaForegroundNoti: sentViaForegroundNoti,
            rname: rname,
            rid: rid),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ChatScreen arguments holder class
class ChatScreenArguments {
  final Key key;
  final UserModel userModel;
  final ChatroomModel chatroomModel;
  final bool sentViaForegroundNoti;
  final String rname;
  final String rid;
  ChatScreenArguments(
      {this.key,
      this.userModel,
      this.chatroomModel,
      this.sentViaForegroundNoti,
      this.rname,
      this.rid});
}
