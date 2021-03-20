import 'package:auto_route/auto_route.dart';
import 'package:chat_application_demo/Application/auth/bloc/authentication_bloc.dart';
import 'package:chat_application_demo/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (context) => AuthenticationBloc()
            ..add(AuthenticationEvent.started(ctx: context)),
          child: BlocListener<AuthenticationBloc, AuthenticationState>(
              listener: (context, state) async {
                if (state.isLoggedIn && !state.isChecking) {
                  await Future.delayed(Duration(seconds: 2));
                  ExtendedNavigator.of(context).popAndPush(Routes.roomScreen);
                } else if (!state.isLoggedIn && !state.isChecking) {
                  await Future.delayed(Duration(seconds: 2));
                  ExtendedNavigator.of(context).popAndPush(Routes.loginScreen);
                }
              },
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'WELCOME To Chat Demo !',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ))),
    );
  }
}
