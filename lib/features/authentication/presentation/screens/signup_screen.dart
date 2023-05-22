// ignore_for_file: unnecessary_new, unused_field, unused_import, no_leading_underscores_for_local_identifiers, body_might_complete_normally_catch_error, prefer_final_fields, unused_local_variable, avoid_print, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/logic/auth.dart';
import 'package:goat_app/features/authentication/logic/auth_screen.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/authentication/presentation/widgets/greeter_appbar.dart';
import 'package:goat_app/features/authentication/presentation/widgets/seperator.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';
import 'package:goat_app/intro%20screen/screen.dart';
import 'package:goat_app/models/user.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final userNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmpasswordEditingController = new TextEditingController();
  String _fullname = "";
  String _username = "";
  String _email = "";
  String _password = "";
  String _confirm = "";

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(FirebaseAuth.instance.currentUser);
    return MaterialApp(
      theme: mainTheme,
      home: SafeArea(
          child: Scaffold(
              appBar: GreeterAppBar("BE THE GOAT", context),
              body: Container(
                  color: lightColorScheme.secondary,
                  child: Stack(children: [
                    Image.asset(
                      "assets/images/signup-cover.png",
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getWidth(context) / 8,
                            vertical: getHeight(context) / 16),
                        child: Form(
                          key: _formKey,
                          child: ListView(reverse: true, children: [
                            OutlinedButton(
                                onPressed: () => {
                                      // Navigate to Sign in Page
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignIn()))
                                    },
                                child: const Text("SIGN IN")),
                            const Sep(),
                            Padding(
                              padding: const EdgeInsets.only(top: 24.0),
                              child: ElevatedButton(
                                style: const ButtonStyle(),
                                onPressed: () async {
                                  // AuthService _authService = new AuthService(
                                  //   auth: _auth,
                                  //   user: new CustomUser(
                                  //     fullname: _fullname,
                                  //     username: _username,
                                  //     email: _email,
                                  //     password: _password,
                                  //   ),
                                  // );
                                  // _authService.registerWithEmail();
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => const screen()));
                                  singUpaccess(emailEditingController.text,
                                      passwordEditingController.text);
                                },
                                child: const Text('CREATE ACCOUNT'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: TextFormField(
                                onChanged: (value) {
                                  // Check form validation
                                  if (_formKey.currentState!.validate()) {
                                    _confirm = value;
                                  }
                                },
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'Conform password is required please enter';
                                  }
                                  if (value != _password) {
                                    return 'Confirm password not matching';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.check_circle),
                                  labelText: 'Confirm Password',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: TextFormField(
                                controller: passwordEditingController,
                                onChanged: (value) {
                                  // Check form validation
                                  _password = value;
                                },
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return "Enter a password";
                                  }
                                  if (value!.length <= 8) {
                                    return "Enter a password more than 8 characters";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.key),
                                  labelText: 'Password',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: TextFormField(
                                controller: emailEditingController,
                                onChanged: (value) => _email = value,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.mail_outline),
                                  labelText: 'Email',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: TextFormField(
                                controller: userNameEditingController,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                onChanged: (value) => _username = value,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  labelText: 'Username',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                onChanged: (value) => _fullname = value,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.account_circle),
                                  labelText: 'Full Name',
                                ),
                              ),
                            ),
                          ]),
                        ))
                  ])))),
    );
  }

  void singUpaccess(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirestore() async {
    //calling the firestore
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    //calling our user model
    User? user = _auth.currentUser;
    //calling these values
    UserModel userModel = UserModel(email: '', password: '');

    //writing all values
    userModel.email = user!.email!;
    userModel.uid = user.uid;
    userModel.username = userNameEditingController.text;

    await firebaseFirestore
        .collection("Users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account Created Successfully");

    Navigator.pushAndRemoveUntil((context),
        MaterialPageRoute(builder: (context) => screen()), (route) => false);
  }
}
