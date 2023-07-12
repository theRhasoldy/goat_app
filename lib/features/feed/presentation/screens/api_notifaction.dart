import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}

class FirebaseAPI {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,

    );
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }
}


class Noti extends StatelessWidget {
  final FirebaseAPI firebaseAPI = FirebaseAPI();

  Noti({Key? key}) : super(key: key) {
    firebaseAPI.initNotifications(); // Call initNotifications method
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
