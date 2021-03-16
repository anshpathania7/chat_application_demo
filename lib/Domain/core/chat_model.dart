import 'package:cloud_firestore/cloud_firestore.dart';

class ChatModel {
  String message;
  String senderUid;
  String username;
  int sentAt;

  ChatModel(
    this.message,
    this.senderUid,
    this.sentAt,
    String username,
  ) {
    if (username.length > 10) {
      this.username = username.substring(0, 10) + "...";
    } else {
      this.username = username;
    }
  }

  Map<String, dynamic> getJson() {
    Map<String, dynamic> toReturn = new Map<String, dynamic>();
    toReturn = {
      "message": message,
      "senderUid": senderUid,
      "username": username,
      "sentAt": sentAt,
    };

    return toReturn;
  }

  ChatModel fromSnap({DocumentSnapshot snap}) {
    this.message = snap.data['message'];
    this.sentAt = snap.data['sentAt'];
    this.senderUid = snap.data['senderUid'];
    this.username = snap.data['username'].toString();
    if (this.username.length > 10) {
      this.username = this.username.substring(0, 10) + "...";
    }
    return this;
  }
}
