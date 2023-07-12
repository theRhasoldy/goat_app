import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/chat/presentation/message.dart';
import 'package:goat_app/models/messages_model.dart';
import 'package:goat_app/models/session_model.dart';
import 'package:goat_app/models/user.dart';

Future<String?> getSentiment() async {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final docRef = firebaseFirestore.collection("Sessions").doc("867946");

  Completer<String?> completer = Completer<String?>();

  docRef.get().then(
    (DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      completer.complete(data["sentiment"]);
    },
    onError: (e) {
      completer.complete(null); // Complete with null in case of an error
    },
  );

  return completer.future;
}

class ChatScreen extends StatefulWidget {
  UserModel? currentUser;
  String sessionId;

  ChatScreen({super.key, required this.sessionId, required this.currentUser});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _ChatScreenState();
  final TextEditingController message = new TextEditingController();
  final firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  final messageController = TextEditingController();
  void dispose() {
    messageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    ChatSession chatSession = ChatSession(fixtureId: widget.sessionId);
    chatSession.createNewSession();

		getSentiment();

    return SizedBox(
      height: getHeight(context) - 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
FutureBuilder<String?>(
          future: getSentiment(),
          builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // Show a loading indicator
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}'); // Show an error message
            } else {
              return Text('Data: ${snapshot.data}'); // Show the retrieved data
            }
					}
	),
	
          Expanded(
            child: Container(
                child: StreamBuilder(
              stream: firebaseFirestore
                  .collection("Sessions")
                  .doc(chatSession.fixtureId)
                  .collection("Messages")
                  .orderBy("timestamp", descending: true)
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.docs.isNotEmpty) {
                    List<QueryDocumentSnapshot?> allData =
                        snapshot.data!.docs.toList();
                    QueryDocumentSnapshot? data =
                        allData.isNotEmpty ? allData.first : null;
                    return data == null
                        ? Container()
                        : ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            reverse: true,
                            itemBuilder: (context, i) {
                              return MessageBubble(
                                  body: snapshot.data!.docs[i].get("body"),
                                  userName:
                                      snapshot.data!.docs[i].get("userName"),
                                  time: snapshot.data!.docs[i].get("time"),
                                  isCurrentUser:
                                      snapshot.data!.docs[i].get("userName") ==
                                          widget.currentUser?.username);
                            });
                  } else {
                    return Text("No chat yet");
                  }
                } else {
                  return Text("Loading");
                }
              },
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: getWidth(context) - getWidth(context) / 6,
                    child: TextField(
                      controller: messageController,
                    )),

                IconButton(
                    onPressed: () {
                      Message message = Message(
                          session: chatSession,
                          body: messageController.text,
                          user: widget.currentUser!,
											timestamp: "${DateTime.now().microsecondsSinceEpoch}",
                          time:
                              "${DateTime.now().hour}:${DateTime.now().minute}");
                      message.postMessageToSession();
                    },
                    icon: Icon(Icons.send))
              ],
            ),
          )

        ],
      ),
    );

  }
}
