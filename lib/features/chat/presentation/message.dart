import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/models/user.dart';

class MessageBubble extends StatefulWidget {
  String body;
  String userName;
  String time;
  bool isCurrentUser;
  MessageBubble(
      {super.key,
      required this.body,
      required this.userName,
      required this.time,
      required this.isCurrentUser});

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.isCurrentUser ? Colors.red : Colors.blue,
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(widget.userName),
            Text(widget.time),
          ]),
          Text(widget.body),
        ],
      ),
    );
  }
}
