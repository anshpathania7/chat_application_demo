import 'package:cloud_firestore/cloud_firestore.dart';

class ChatroomModel {
  String chatroomName;
  String chatroomId;

  ChatroomModel({DocumentSnapshot snap}) {
    this.chatroomName = snap.data['roomName'];
    if (this.chatroomName.length > 12) {
      this.chatroomName = this.chatroomName.substring(0, 12) + "...";
    }
    this.chatroomId = snap.documentID.toString();
  }

  ChatroomModel.fromNoti({String rid, String rname}) {
    this.chatroomId = rid;
    this.chatroomName = rname;
    if (this.chatroomName.length > 12) {
      this.chatroomName = this.chatroomName.substring(0, 12) + "...";
    }
  }

  String getChatroomIdOnly() => this.chatroomId;

  String getShareableChatroomId() =>
      ("To join $chatroomName room, use this id : $chatroomId");
}
