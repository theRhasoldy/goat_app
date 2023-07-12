import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:goat_app/models/session_model.dart';
import 'package:goat_app/models/user.dart';

class Message {
  ChatSession session;
  UserModel user;
  String? time;
  String? timestamp;
  String? body;
  bool? isCurrentUser;

  Message(
      {required this.session,
      required this.user,
      required this.time,
      required this.timestamp,
      this.body});

  postMessageToSession() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    await firebaseFirestore
        .collection("Sessions")
        .doc(this.session.fixtureId)
        .collection("Messages")
        .doc(DateTime.now().second.toString())
        .set({
      "body": body,
      "userUId": user.uid,
      "userName": user.username,
      "time": time,
      "timestamp": timestamp
    });
  }
}
