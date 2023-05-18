import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goat_app/models/user.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthService {
  FirebaseAuth auth;
  CustomUser user;

  AuthService({required this.auth, required this.user});

  //Create user object based on Firebase User
  Future registerWithEmail() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
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

  //Sign in with email
  Future<bool> signInWithEmail() async {
    try {
      final existingUser = await auth.signInWithEmailAndPassword(
        email: user.email,
        password: user.password,
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

