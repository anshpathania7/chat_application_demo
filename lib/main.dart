import 'package:auto_route/auto_route.dart';
import 'package:chat_application_demo/Infrastructure/services/push_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'routes.gr.dart' as routes;
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firest.initializeApp();
  if (kIsWeb) {
    PushNotifications().initialize(isThisWeb: true);
  } else {
    PushNotifications().initialize(isThisWeb: false);
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: routes.Router(),
      builder: ExtendedNavigator.builder<routes.Router>(
          router: routes.Router(),
          builder: (context, extendNav) => Theme(
              data: ThemeData(
                primarySwatch: Colors.blue,
              ),
              child: extendNav)),
    );
  }
}
