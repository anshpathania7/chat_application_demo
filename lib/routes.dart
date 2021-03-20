import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:chat_application_demo/Presentation/ChatScreen/chat_screen.dart';
import 'package:chat_application_demo/Presentation/SplashScreen/SpashScreen.dart';

import 'Presentation/LoginScreen/login_screen.dart';
import 'Presentation/RoomScreen/room_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: LoginScreen,
      initial: false,
    ),
    CustomRoute(page: SplashScreen, initial: true),
    CustomRoute(
        page: RoomScreen, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: ChatScreen, initial: false)
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
