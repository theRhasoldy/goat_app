// ignore_for_file: must_be_immutable, camel_case_types, no_logic_in_create_state, library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors, avoid_print, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, unused_import, unnecessary_null_comparison, dead_code

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/models/user.dart';

class messages extends StatefulWidget {
  UserModel currentUser; // Add this line
  // ignore: use_key_in_widget_constructors
  messages({required this.currentUser}); // Update the constructor
  @override
  _messagesState createState() => _messagesState(currentUser: currentUser);
}

class _messagesState extends State<messages> {
  UserModel currentUser; // Add this line
  _messagesState({required this.currentUser}); // Add this line
  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  void fetchUserData() async {
    // Fetch the user data from Firestore using the email
    // Replace 'yourFirestoreCollection' with the actual name of your Firestore collection
    final snapshot = await FirebaseFirestore.instance
        .collection('Users')
        .where('email', isEqualTo: widget.currentUser)
        .get();

    if (snapshot.docs.isNotEmpty) {
      final userData = snapshot.docs.first.data();
      setState(() {
        // Assign the user data to the currentUser variable
        currentUser = UserModel.fromMan(userData);
      });
    }
  }
/////////////////////////////////////////////////////////

  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<QuerySnapshot> _messageStream = FirebaseFirestore.instance
      .collection('Messages')
      .orderBy('time')
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _messageStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        return messages(currentUser: currentUser); // Pass the currentUser object
        }

        return ListView.builder(
          itemCount: snapshot.data!.docs.length,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          primary: true,
          itemBuilder: (_, index) {
            QueryDocumentSnapshot qs = snapshot.data!.docs[index];
            Timestamp t = qs['time'];
            DateTime d = t.toDate();
            print(d.toString());

            return Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Column(
                crossAxisAlignment: currentUser == qs['email']
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Text(
                      'Username: ${widget.currentUser.username}'), // Use widget.currentUser
                  Text(
                      'Email: ${widget.currentUser.email}'), // Use widget.currentUser
                  SizedBox(
                    width: 300,
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      title: Text(
                        currentUser.email,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              qs['message'],
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Text(
                            d.hour.toString() + ":" + d.minute.toString(),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
        
      },
    );
  }
}
