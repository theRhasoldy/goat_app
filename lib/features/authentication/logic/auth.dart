import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:goat_app/models/user.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthService {
  FirebaseAuth auth;
  UserModel? userModel;

  AuthService({required this.auth, this.userModel});

  //Create user object based on Firebase User
  Future registerWithEmail() async {
    try {
      UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userModel!.email,
        password: userModel!.password,
      );

      postDetailsToFirestore(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future postDetailsToFirestore(UserCredential credential) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    userModel?.score = 0;
    userModel?.uid = credential.user?.uid;

    await firebaseFirestore
        .collection("Users")
        .doc(credential.user?.uid)
        .set(userModel!.toMap());
  }

  //Sign in with email
  Future<bool> signInWithEmail() async {
    try {
      final existingUser = await auth.signInWithEmailAndPassword(
        email: userModel!.email,
        password: userModel!.password,
      );

      if (existingUser.user != null) {
        // Successful sign-in, user exists
        // Proceed to the home page or perform any necessary actions
        print('User signed in successfully');
        return true;
      } else {
        // User doesn't exist
        print('User not found. Please enter valid credentials.');
        return false;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('User not found. Please enter valid credentials.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided. Please enter correct password.');
      } else {
        print('Error signing in: $e');
      }
      return false;
    } catch (e) {
      print('Error signing in: $e');
      return false;
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}
