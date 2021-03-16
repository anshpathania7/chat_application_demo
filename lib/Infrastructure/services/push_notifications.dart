import 'dart:convert';

import 'package:chat_application_demo/Domain/core/chat_model.dart';
import 'package:chat_application_demo/Domain/core/chat_room_model.dart';
import 'package:chat_application_demo/Domain/core/user_model.dart';
import 'package:chat_application_demo/Domain/services/i_push_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

class PushNotifications implements IPushNotifications {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  AndroidInitializationSettings initializationSettingsAndroid;
  InitializationSettings initializationSettings;
  AndroidNotificationDetails androidPlatformChannelSpecifics;
  NotificationDetails platformChannelSpecifics;
  FirebaseMessaging firebaseNotification;
  static FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  static Firestore _firestore = Firestore();
  static FirebaseAuth _auth = FirebaseAuth.instance;
  static PushNotifications instance = null;
  bool isWeb;
  String currentRoomId;

  @override
  void initialize({bool isThisWeb}) {
    isWeb = isThisWeb;
    this.currentRoomId = "";
    this.firebaseNotification = new FirebaseMessaging();
    if (!isWeb) {
      this.flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
      this.initializationSettingsAndroid =
          AndroidInitializationSettings('@mipmap/launcher_icon');
      this.initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
      );
      this.firebaseNotification.configure(
            onBackgroundMessage: _myFcmHandler,
            onMessage: (message) async => getNotifications(message, isWeb),
          );
    }
    instance = this;
    // await getToken();
  }

  PushNotifications getInstance() {
    return instance;
  }

  Future<void> getToken() async {
    final uid = await _firebaseAuth.currentUser().then((value) => value.uid);
    final token = await firebaseNotification.getToken();
    await _firestore
        .collection('User')
        .document(uid)
        .updateData({'fcmToken': token});
  }

  @override
  Future<void> getNotifications(Map<String, dynamic> data, bool isWeb) async {
    final uid = await _auth.currentUser().then((value) => value.uid);
    if (uid == data['data']['uid']) {
      return;
    }
    if (this.currentRoomId == data['data']['roomid']) {
      return;
    }
    print("RECIEVED NOTIFICATION");
    final roomname = data['notification']['title'];
    final username = data['notification']['username'];
    final message = data['notification']['body'];
    final rid = data['data']['roomid'];
    if (!isWeb) {
      androidPlatformChannelSpecifics = AndroidNotificationDetails(
        '6969',
        'message pushing example',
        'message pushing service',
        icon: '@mipmap/ic_launcher',
        importance: Importance.max,
        priority: Priority.high,
        enableVibration: true,
        fullScreenIntent: true,
        enableLights: true,
        playSound: true,
        visibility: NotificationVisibility.public,
        showWhen: true,
      );
      platformChannelSpecifics =
          NotificationDetails(android: androidPlatformChannelSpecifics);
      await FlutterLocalNotificationsPlugin()
          .show(0, roomname, message, platformChannelSpecifics);
    }
  }

  @override
  Future<void> sendNotifications(
      {ChatModel chatModel, ChatroomModel chatroomModel, String uid}) async {
    final postUrl = 'https://fcm.googleapis.com/fcm/send';
    String toParams = "/topics/" + chatroomModel.chatroomId;
    final data = {
      "notification": {
        "body": chatModel.username + " : " + chatModel.message,
        "title": chatroomModel.chatroomName,
        "username": chatModel.username,
      },
      "priority": "high",
      "data": {
        "click_action": "FLUTTER_NOTIFICATION_CLICK",
        "id": "1",
        "status": "done",
        "sound": 'default',
        "roomid": chatroomModel.chatroomId,
        "screen": chatroomModel.chatroomName,
        "uid": uid
      },
      "to": "$toParams"
    };
    final headers = {
      'content-type': 'application/json',
      'Authorization':
          'key=AAAAk9pSHQg:APA91bFo_opf8_zNT-7NwMCApD4Yq_OkaCKuduzMRV1nLVG7ql_hIcIEZ-x8fXq1OYPBh-rywEtafQG_saZHK_QI5HJBzc7EbKJHQQBM26jz4wX2M6dni8VoiQSLEpPRgg5eW7W-T0Dg'
    };
    final response = await http.post(postUrl,
        body: json.encode(data),
        encoding: Encoding.getByName('utf-8'),
        headers: headers);
    if (response.statusCode == 200) {
      print("SENT");
    } else {
      print("NOT SENT");
    }
  }

  void subscribeToThisRoom({@required String roomId}) {
    print("SUBSCRIBING TO : " + roomId);
    firebaseNotification.subscribeToTopic(roomId);
  }

  void setRoomId({String roomid}) {
    this.currentRoomId = roomid;
  }
}

Future<dynamic> _myFcmHandler(Map<String, dynamic> message) async {
  bool isWeb = PushNotifications().getInstance().isWeb;
  PushNotifications().getInstance().getNotifications(message, isWeb);
}
