import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/logic/auth.dart';
import 'package:goat_app/features/authentication/presentation/screens/signup_screen.dart';
import 'package:goat_app/features/authentication/presentation/widgets/greeter_appbar.dart';
import 'package:goat_app/features/authentication/presentation/widgets/seperator.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _auth = AuthService();

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
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: TextFormField(
                            onChanged: (value) => _email = value,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail_outline),
                              labelText: 'Email',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 6),
                          child: TextFormField(
                            onChanged: (value) => _password = value,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.key_outlined),
                              labelText: 'Password',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: const ButtonStyle(),
                          onPressed: () async {
                            _auth.signInWithEmail(_email, _password);
                          },
                          child: const Text('SIGN IN'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Forgot Password?"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => {},
                              icon: Icon(FontAwesomeIcons.facebookF, size: 30),
                              iconSize: 32,
                              color: lightColorScheme.primary,
                            ),
                            SizedBox(width: getWidth(context) / 12),
                            IconButton(
                              onPressed: () => {},
                              icon: Icon(FontAwesomeIcons.google, size: 30),
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
                                      builder: (context) => SignUp()))
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
}
