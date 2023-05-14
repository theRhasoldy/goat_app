import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/logic/auth.dart';
import 'package:goat_app/features/authentication/presentation/widgets/greeter_appbar.dart';
import 'package:goat_app/features/authentication/presentation/widgets/seperator.dart';
import 'package:goat_app/features/feed/presentation/screens/chat_screen.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';
import 'package:goat_app/models/user.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure3 = true;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController =  TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _auth = FirebaseAuth.instance;

  String _email = "";
  String _password = "";




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: GreeterAppBar("JOIN THE GOATS", context),
            body: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: lightColorScheme.secondary,
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20)),
                  ),
                  height: getHeight(context) / 2.5,
                  child: Image.asset(
                    'assets/images/signin-cover.png',
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: double.minPositive,
                    horizontal: getWidth(context) / 8,
                  ),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credentials",
                          style: TextStyle(
                            color: lightColorScheme.secondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: TextFormField(
                            onChanged: (value) => _email = value,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.mail_outline),
                              labelText: 'Email',

                            ),
                            validator: (value) {
                              if (value!.length == 0) {
                                return "Email cannot be empty";
                              }
                              if (!RegExp(
                                  "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                  .hasMatch(value)) {
                                return ("Please enter a valid email");
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              emailController.text = value!;
                            },
                            keyboardType: TextInputType.emailAddress,
                          ),
                          ),



                        Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: TextFormField(
                            onChanged: (value) => _password = value,
                            obscureText: true,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.key_outlined),
                              labelText: 'Password',
                            ),
                            validator: (value) {
                              RegExp regex = new RegExp(r'^.{6,}$');
                              if (value!.isEmpty) {
                                return "Password cannot be empty";
                              }
                              if (!regex.hasMatch(value)) {
                                return ("please enter valid password min. 6 character");
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              passwordController.text = value!;
                            },
                            keyboardType: TextInputType.emailAddress,
                          ),
                          ),

                        ElevatedButton(
                          style: const ButtonStyle(),
                          onPressed: () async {
                            AuthService _authService = new AuthService(
                                auth: _auth,
                                user: CustomUser(
                                    email: _email, password: _password));
                            _authService.signInWithEmail();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Home()));
                            onPressed: () async {
                              signIn(emailController.text, passwordController.text);

                              setState(() {
                                visible = true;
                              });
                              signIn(
                                  emailController.text, passwordController.text);
                            };
                          },
                          child: const Text('SIGN IN'),

                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Forgot Password?"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () =>
                              {
                                signInWithFacebook()
                              },
                              icon: const Icon(FontAwesomeIcons.facebookF,
                                  size: 30),
                              iconSize: 32,
                              color: lightColorScheme.primary,
                            ),

                            SizedBox(width: getWidth(context) / 12),
                            IconButton(
                              onPressed: () =>
                              {
                                signInWithGoogle()
                              },
                              icon:
                              const Icon(FontAwesomeIcons.google, size: 30),
                              iconSize: 32,
                              color: lightColorScheme.primary,
                            )

                          ],

                        ),

                        const Sep(),

                        OutlinedButton(
                            onPressed: () =>
                            {
                              // Navigate to Sign in Page
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Home()))
                            },

                            child: const Text("SIGN UP"))


              ],
                    ),
                  ),

                )
              ],
            )),
      ),
    );
  }
  void signIn (String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                chatpage(
                  email: email,
                ),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }

      }
    }
  }
  signInWithGoogle() async {
    // Initialize GoogleSignIn
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Get GoogleSignInAuthentication
    final GoogleSignInAuthentication googleAuth = await googleUser!
        .authentication;

    // Get Firebase credential from Google
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Sign in to Firebase with the credential
    final UserCredential userCredential = await FirebaseAuth.instance
        .signInWithCredential(credential);

    return userCredential;
  }
  signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
    FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(
        facebookAuthCredential);
  }

}
