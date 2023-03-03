import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';

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
          body: Column(
            children: [
              Container(
                color: lightColorScheme.secondary,
                height: 30,
              ),
              Image.asset(
                'assets/images/greeter.png',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 80, right: 80),
                child: Column(children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () => {},
                            child: Text("SIGN UP"),
                          ),
                          ElevatedButton(
                            onPressed: () => {
                              // Navigate to Sign in Page
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignIn()))
                            },
                            child: Text('SIGN IN'),
                          )
                        ],
                      ),
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
                      SizedBox(height: 20),
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
