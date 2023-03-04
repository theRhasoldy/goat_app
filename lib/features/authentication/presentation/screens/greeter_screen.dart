import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/authentication/presentation/screens/signup_screen.dart';

import '../widgets/greeter_appbar.dart';
import '../widgets/seperator.dart';

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
                        BorderRadius.vertical(bottom: Radius.circular(20)),
                  ),
                  height: getHeight(context) / 2,
                  child: Image.asset(
                    'assets/images/greeter.png',
                  )),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getHeight(context) / 12,
                  horizontal: getWidth(context) / 8,
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: getWidth(context) / 3,
                        child: ElevatedButton(
                          onPressed: () => {
                            // Navigate to Sign in Page
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignUp()))
                          },
                          child: Text("SIGN UP"),
                        ),
                      ),
                      Container(
                        width: getWidth(context) / 3,
                        child: ElevatedButton(
                          onPressed: () => {
                            // Navigate to Sign in Page
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignIn()))
                          },
                          child: Text('SIGN IN'),
                        ),
                      )
                    ],
                  ),
                  Sep(),
                  Column(
                    children: [
                      OutlinedButton(
                          onPressed: () => {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.gite),
                              SizedBox(width: 10),
                              Text("CONTINUE WITH GOOGLE")
                            ],
                          )),
                      SizedBox(height: 12),
                      OutlinedButton(
                          onPressed: () => {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.facebook),
                              SizedBox(width: 10),
                              Text("CONTINUE WITH FACEBOOK")
                            ],
                          )),
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
