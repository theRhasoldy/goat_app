import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:goat_app/models/session.dart';
import 'package:goat_app/models/user.dart';

class Message {
  ChatSession session;
  UserModel user;
  String messageId;
  String? body;

  Message({
    required this.session,
    required this.user,
    required this.messageId,
  });
}
