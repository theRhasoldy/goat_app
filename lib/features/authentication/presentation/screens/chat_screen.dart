// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class ChatScreen extends StatefulWidget {
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }
//
// class _ChatScreenState extends State<ChatScreen> {
//   final _auth = FirebaseAuth.instance;
//   final _firestore = FirebaseFirestore.instance;
//   final _textController = TextEditingController();
//   String? _currentUserId = _currentUserId;
//
//
//   @override
//   void initState() {
//     super.initState();
//     _getCurrentUser();
//   }
//
//   void _getCurrentUser() async {
//     final currentUser = await _auth.currentUser;
//     if (currentUser != null) {
//       setState(() {
//         _currentUserId = currentUser.uid;
//       });
//     }
//   }
//
//
//   void _sendMessage() async {
//     final messageText = _textController.text.trim();
//     _textController.clear();
//     if (messageText.isNotEmpty) {
//       await _firestore.collection('chats').add({
//         'text': messageText,
//         'sender': _currentUserId,
//         'timestamp': FieldValue.serverTimestamp(),
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Live Chat'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: _firestore.collection('chats').orderBy('timestamp').snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }
//                 final messages = snapshot.data?.docs;
//                 return ListView.builder(
//                   itemCount: messages?.length,
//                   itemBuilder: (context, index) {
//                     final message = messages![index];
//                     final text = message['text'];
//                     final sender = message['sender'];
//                     final isCurrentUser = sender == _currentUserId;
//                     return Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
//                       child: Row(
//                         mainAxisAlignment: isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
//                         children: [
//                           Flexible(
//                             child: Container(
//                               padding: EdgeInsets.all(8.0),
//                               decoration: BoxDecoration(
//                                 color: isCurrentUser ? Colors.blueGrey[100] : Colors.grey[300],
//                                 borderRadius: BorderRadius.circular(16.0),
//                               ),
//                               child: Text(text),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _textController,
//                     decoration: InputDecoration(
//                       hintText: 'Type a message...',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(24.0),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 8.0),
//                 FloatingActionButton(
//                   child: Icon(Icons.send),
//                   onPressed: _sendMessage,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
