// ignore_for_file: must_be_immutable, camel_case_types, no_logic_in_create_state, library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors, avoid_print, sized_box_for_whitespace, prefer_interpolation_to_compose_strings

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class messages extends StatefulWidget {
  String email;
  // ignore: use_key_in_widget_constructors
  messages({required this.email});
  @override
  _messagesState createState() => _messagesState(email: email);
}

class _messagesState extends State<messages> {
  String email;
  _messagesState({required this.email});

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
          return Text("something is wrong");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
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
                crossAxisAlignment: email == qs['email']
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
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
                        qs['email'],
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
