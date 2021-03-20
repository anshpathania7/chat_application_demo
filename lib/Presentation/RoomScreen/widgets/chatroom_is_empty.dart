import 'package:flutter/material.dart';

class ChatroomIsEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Join or Create a room...",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          )),
    );
  }
}
