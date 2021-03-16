import 'package:auth_buttons/auth_buttons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chat_application_demo/Application/auth/bloc/authentication_bloc.dart';
import 'package:chat_application_demo/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthenticationBloc(),
        child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state.isLoggedIn) {
              ExtendedNavigator.of(context).popAndPush(Routes.roomScreen);
            }
            if (state.isChecking) {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Text("Please wait checking"),
                      ));
            }
          },
          builder: (context, state) =>
              Container(child: Center(child: GoogleAuthButton(
            onPressed: () async {
              BlocProvider.of<AuthenticationBloc>(context)
                  .add(AuthenticationEvent.login());
            },
          ))),
        ),
      ),
    );
  }
}
