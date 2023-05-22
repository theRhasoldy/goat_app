// ignore_for_file: must_be_immutable, camel_case_types, no_logic_in_create_state, library_private_types_in_public_api, unnecessary_new, prefer_const_constructors, body_might_complete_normally_nullable, sized_box_for_whitespace, unused_import, unused_field, unused_local_variable, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';
import 'package:goat_app/features/feed/presentation/screens/message.dart';
import 'package:goat_app/features/feed/presentation/screens/statistics_screen.dart';
import 'package:goat_app/features/feed/presentation/widgets/loading_card.dart';
import 'package:goat_app/features/feed/presentation/widgets/predict_card.dart';
import 'package:goat_app/models/user.dart';
import '../widgets/fixture_card.dart';

class chatpage extends StatefulWidget {
  String email;
  // ignore: use_key_in_widget_constructors
  chatpage({required this.email});
  @override
  _chatpageState createState() => _chatpageState(email: email);
}

class _chatpageState extends State<chatpage> {
  String email;
  late Future<UserModel> _currentUserFuture; // Add this line
  _chatpageState({required this.email});
  final fs = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  final TextEditingController message = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _currentUserFuture =
        getCurrentUser(); // Call the method to fetch the user data
  }

  Future<UserModel> getCurrentUser() async {
    User? firebaseUser = _auth.currentUser;
    if (firebaseUser != null) {
      String uid = firebaseUser.uid;
      QuerySnapshot userSnapshot =
          await fs.collection('Users').where('email', isEqualTo: email).get();
      print('Query Results: ${userSnapshot.docs.length} documents found');
      if (userSnapshot.docs.isNotEmpty) {
        DocumentSnapshot document = userSnapshot.docs.first;
        UserModel loggedInUser = UserModel.fromMan(document.data());
        return loggedInUser;
      } else {
        // Handle the case when the user document is not found
        throw Exception('User not found in Firestore');
      }
    }else {
    // Handle the case when the user is not authenticated
    throw Exception('User not authenticated');
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Live chat',
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              _auth.signOut().whenComplete(() {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              });
            },
            child: Text(
              "Back",
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FutureBuilder<UserModel>(
              future: _currentUserFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.79,
                    child: messages(
                      currentUser: snapshot.data!, // Use the snapshot data
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return Home(); // Placeholder widget while fetching user data
                }
              },
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: message,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'message',
                      enabled: true,
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.green),
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.green),
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {},
                    onSaved: (value) {
                      message.text = value!;
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (message.text.isNotEmpty) {
                      fs.collection('Messages').doc().set({
                        'message': message.text.trim(),
                        'time': DateTime.now(),
                        'email': email,
                      });

                      message.clear();
                    }
                  },
                  icon: Icon(Icons.send_sharp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
