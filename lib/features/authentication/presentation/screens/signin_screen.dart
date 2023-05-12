import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/logic/auth.dart';
import 'package:goat_app/features/authentication/presentation/widgets/greeter_appbar.dart';
import 'package:goat_app/features/authentication/presentation/widgets/seperator.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';
import 'package:goat_app/models/user.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // final _auth = AuthService();

  String _email = "";
  String _password = "";

  FirebaseAuth _auth = FirebaseAuth.instance;

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
                              onPressed: () => {
                                signInWithFacebook()
                              },
                              icon: const Icon(FontAwesomeIcons.facebookF,
                                  size: 30),
                              iconSize: 32,
                              color: lightColorScheme.primary,
                            ),
                            SizedBox(width: getWidth(context) / 12),
                            IconButton(
                              onPressed: () => {
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
                            onPressed: () => {
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
  Future<UserCredential> signInWithGoogle() async {
    // Initialize GoogleSignIn
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Get GoogleSignInAuthentication
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    // Get Firebase credential from Google
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Sign in to Firebase with the credential
    final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

    return userCredential;
  }

  signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
    FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}
