import 'package:flutter/material.dart';

class EmptyChatScreen extends StatelessWidget {
  const EmptyChatScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Look empty...🙁",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 24),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Start a conversation 😃 ?",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 22),
          )
        ],
      ),
    );
  }
}
