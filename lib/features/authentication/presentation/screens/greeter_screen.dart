import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';

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
              Image.asset(
                'assets/images/greeter.png',
              ),
              Padding(
                padding: const EdgeInsets.all(80),
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
                            onPressed: () => {},
                            child: Text('SIGN IN'),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Sep(),
                  ),
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
