import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goat_app/common/widgets/bottom_navigation_bar.dart';
import 'package:goat_app/features/authentication/presentation/screens/signup_screen.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';
import 'package:goat_app/models/user.dart';

class Wrapper extends ConsumerWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<User?>(
      future: FirebaseAuth.instance.authStateChanges().first,
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show a loading indicator while checking for user existence
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // Handle any errors that occurred during the future computation
          return Text('Error: ${snapshot.error}');
        } else {
          final user = snapshot.data;
          if (user != null) {
            return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              future: FirebaseFirestore.instance
                  .collection("Users")
                  .doc(user.uid)
                  .get(),
              builder: (BuildContext context,
                  AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>>
                      snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Show a loading indicator while fetching user data
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  // Handle any errors that occurred during the future computation
                  return Text('Error: ${snapshot.error}');
                } else {
                  final doc = snapshot.data;
                  if (doc != null && doc.exists) {
                    final data = doc.data()!;
                    UserModel currentUser = UserModel.fromMan(data);
                    if (user.uid == currentUser.uid) {
                      return BottomNavBar(
                       // currentUser: currentUser,
                      );
                    }
                  }
                  // If user doesn't exist or doesn't meet the condition, show the sign-up widget
                  return SignUp();
                }
              },
            );
          } else {
            // If user is null, show the sign-up widget
            return SignUp();
          }
        }
      },
    );
  }
}
