import 'package:flutter/material.dart';
import 'package:goat_app/SignIn.dart';
import 'package:provider/provider.dart';
import 'package:goat_app/SignUp.dart';
void main() {
  runApp(GOAT());
}
class GOAT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (BuildContext context) {  },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            primaryColor: Color(0xFF0A0E21),
            scaffoldBackgroundColor: Color(0xFF0A0E21),
          ),
          home: SignIn(),
        ));
  }
}
