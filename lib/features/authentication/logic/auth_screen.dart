// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  @override
  void initState() {
    super.initState();
    // Check if the user is already signed in
    _user = _auth.currentUser;
  }

  Future<void> _signInWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User? user = userCredential.user;

      if (user != null) {
        setState(() {
          _user = user;
        });

        // You can access the user ID with _user.uid
        print('Signed in user ID: ${_user!.uid}');
      }
    } catch (e) {
      print('Error signing in: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_user == null)
              ElevatedButton(
                child: Text('Sign In'),
                onPressed: () => _signInWithEmailAndPassword('test@example.com', 'password'),
              ),
            if (_user != null)
              Text('User ID: ${_user!.uid}'),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AuthScreen(),
  ));
}
