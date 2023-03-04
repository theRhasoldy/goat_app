import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/authentication/presentation/screens/signup_screen.dart';
import '../widgets/greeter_appbar.dart';
import '../widgets/seperator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Greeter extends StatefulWidget {
  const Greeter({Key? key}) : super(key: key);

  @override
  State<Greeter> createState() => _GreeterState();
}

class _GreeterState extends State<Greeter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mainTheme,
      home: SafeArea(
        child: Scaffold(
          appBar: GreeterAppBar("WELCOME TO THE GOATS", context),
          body: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: lightColorScheme.secondary,
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(20)),
                ),
                height: getHeight(context) / 2.5,
                child: Image.asset(
                  'assets/images/greeter-cover.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getHeight(context) / 12,
                  horizontal: getWidth(context) / 8,
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: getWidth(context) / 3,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigate to Sign up Page with animation
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 300),
                                pageBuilder: (context, animation, _) {
                                  return SignUp();
                                },
                                transitionsBuilder:
                                    (context, animation, _, child) {
                                  return SlideTransition(
                                    position: Tween(
                                      begin: Offset(1.0, 0.0),
                                      end: Offset(0.0, 0.0),
                                    ).animate(animation),
                                    child: child,
                                  );
                                },
                              ),
                            );
                          },
                          child: const Text("SIGN UP"),
                        ),
                      ),
                      SizedBox(
                        width: getWidth(context) / 3,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigate to Sign in Page with animation
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 300),
                                pageBuilder: (context, animation, _) {
                                  return const SignIn();
                                },
                                transitionsBuilder:
                                    (context, animation, _, child) {
                                  return SlideTransition(
                                    position: Tween(
                                      begin: Offset(-1.0, 0.0),
                                      end: Offset(0.0, 0.0),
                                    ).animate(animation),
                                    child: child,
                                  );
                                },
                              ),
                            );
                          },
                          child: const Text('SIGN IN'),
                        ),
                      )
                    ],
                  ),
                  const Sep(),
                  Column(
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.google, size: 23),
                        label: Text('CONTINUE WITH GOOGLE    '),
                      ),
                      const SizedBox(height: 12),
                      OutlinedButton.icon(
                        onPressed: () {
                          // do something when the button is pressed
                        },
                        icon: Icon(FontAwesomeIcons.facebookF, size: 23),
                        label: Text('CONTINUE WITH FACEBOOK'),
                      ),
                    ],
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
