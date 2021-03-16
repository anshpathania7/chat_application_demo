import 'package:chat_application_demo/Domain/Database/i_database_facade.dart';
import 'package:chat_application_demo/Domain/core/chat_model.dart';
import 'package:chat_application_demo/Domain/core/chat_room_model.dart';
import 'package:chat_application_demo/Domain/core/user_model.dart';
import 'package:chat_application_demo/Infrastructure/services/push_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class DatabaseFacade implements IDatabaseFacade {
  final Firestore _firestore = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //Send Messages to room
  @override
  Future<bool> sendChatMessage(
      {ChatModel chatModel, ChatroomModel chatroomModel}) async {
    final uid = await _auth.currentUser().then((value) => value.uid);
    final chatroomRef = _firestore
        .collection('Chatrooms')
        .document('${chatroomModel.chatroomId}')
        .collection('chats');
    final result = await chatroomRef
        .add(chatModel.getJson())
        .then((value) => true)
        .catchError((e) => false);
    await PushNotifications().getInstance().sendNotifications(
        chatroomModel: chatroomModel, chatModel: chatModel, uid: uid);
    return result;
  }

  //Create a room by user
  @override
  Future<String> createARoom({@required String roomName}) async {
    final uid = await _auth.currentUser().then((value) => value.uid);
    final roomRef = _firestore.collection('Chatrooms');
    final userRef =
        _firestore.collection('User').document('$uid').collection('Chatrooms');

    final String roomID = await roomRef
        .add({'ownerUid': uid, 'roomName': roomName}).then(
            (value) => value.documentID);
    await userRef.document('$roomID').setData({'roomName': roomName});
    await PushNotifications().getInstance().subscribeToThisRoom(roomId: roomID);
    return roomID;
  }

  @override
  Future<Query> getChatroomQuery() async {
    final uid = await _auth.currentUser().then((value) => value.uid);
    return _firestore
        .collection('User')
        .document('$uid')
        .collection('Chatrooms');
  }

  @override
  Query openThisChatroomQuery({String chatroomId}) {
    return _firestore
        .collection('Chatrooms')
        .document('$chatroomId')
        .collection('chats')
        .orderBy('sentAt');
  }

  @override
  Future<bool> joinThisChatroom({String roomId, UserModel userModel}) async {
    final getRoomName =
        await _firestore.collection('Chatrooms').document(roomId).get();
    final userRef = await _firestore
        .collection('User')
        .document(userModel.uid)
        .collection('Chatrooms')
        .document('$roomId')
        .setData({'roomName': getRoomName.data['roomName']});
    await PushNotifications().getInstance().subscribeToThisRoom(roomId: roomId);
    return true;
  }
}
