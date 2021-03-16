import 'package:cloud_firestore/cloud_firestore.dart';

class ChatroomModel {
  String chatroomName;
  String chatroomId;

  ChatroomModel({DocumentSnapshot snap}) {
    this.chatroomName = snap.data['roomName'];
    this.chatroomId = snap.documentID.toString();
  }

  String getShareableChatroomId() =>
      ("To join $chatroomName room, use this id : $chatroomId");
}
