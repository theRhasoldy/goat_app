import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/logic/auth.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/authentication/presentation/widgets/greeter_appbar.dart';
import 'package:goat_app/features/authentication/presentation/widgets/seperator.dart';
import 'package:goat_app/models/user.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final _formKey = GlobalKey<FormState>();
  final _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    String fullname = "";
    String email = "";
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignIn()))
                            },
                        child: const Text("SIGN IN")),
                    const Sep(),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: ElevatedButton(
                        style: const ButtonStyle(),
                        onPressed: () async {
                          try {
                            UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                email: "anabdaan@yahoo.com",
                                password: "bdaan123456!");
                                print(userCredential);
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              print('The account already exists for that email.');
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: const Text('CREATE ACCOUNT'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        onChanged: (value) => email = value,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Username',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        onChanged: (value) => fullname = value,
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ])),
      )),
    );
  }
}
