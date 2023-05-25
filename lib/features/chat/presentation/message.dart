import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/models/user.dart';

class MessageBubble extends StatefulWidget {
  String body;
  String userName;
  bool isCurrentUser;
  MessageBubble(
      {super.key,
      required this.body,
      required this.userName,
      required this.isCurrentUser});

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(widget.userName),
            Text("23:32"),
          ]),
          Text(widget.body),
        ],
      ),
    );
  }
}
