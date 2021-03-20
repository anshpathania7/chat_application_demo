import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'routes.gr.dart' as routes;
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firest.initializeApp();
  if (kIsWeb) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
        .then((_) {
      runApp(MyApp());
    });
  } else {
    runApp(MyApp());
  }
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
