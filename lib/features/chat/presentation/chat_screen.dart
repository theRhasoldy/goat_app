import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/logic/auth.dart';
import 'package:goat_app/models/session.dart';
import 'package:goat_app/models/user.dart';

class ChatScreen extends StatefulWidget {
  UserModel? currentUser;
  String sessionId;

  ChatScreen({super.key, required this.sessionId, required this.currentUser});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _ChatScreenState();
  // late Future<UserModel> _currentUserFuture; // Add this line
  // final _auth = FirebaseAuth.instance;
  final TextEditingController message = new TextEditingController();
  final firebaseAuth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();

    ChatSession chatSession = ChatSession(fixtureId: widget.sessionId);
    chatSession.createNewSession();
    //Check if session exists if not create a new one
    print("Chat Session");
    print(widget.sessionId);
    print(widget.currentUser?.fullname);

    /* _currentUserFuture =
        getCurrentUser(); // Call the method to fetch the user data */
  }

  /* Future<UserModel> getCurrentUser() async {
    User? firebaseUser = _auth.currentUser;
    if (firebaseUser != null) {
      String uid = firebaseUser.uid;
      querysnapshot usersnapshot =
          await fs.collection('users').where('email', isequalto: email).get();
      print('query results: ${usersnapshot.docs.length} documents found');
      if (userSnapshot.docs.isNotEmpty) {
        DocumentSnapshot document = userSnapshot.docs.first;
        UserModel loggedInUser = UserModel.fromMan(document.data());
        return loggedInUser;
      } else {
        // Handle the case when the user document is not found
        throw Exception('User not found in Firestore');
      }
    } else {
      // Handle the case when the user is not authenticated
      throw Exception('User not authenticated');
    }
  } */

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context) - 300,
      child: ListView(physics: BouncingScrollPhysics(), children: [
        Padding(
          padding: const EdgeInsets.all(100),
          child: Text("Hello"),
        ),
        Padding(
          padding: const EdgeInsets.all(100),
          child: Text("Hello"),
        ),
        Padding(
          padding: const EdgeInsets.all(100),
          child: Text("Hello"),
        ),
        Padding(
          padding: const EdgeInsets.all(100),
          child: Text("Hello"),
        ),
      ]),
    );
  }
}
