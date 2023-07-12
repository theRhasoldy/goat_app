// ignore_for_file: use_key_in_widget_constructors, camel_case_types, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';

class page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: 362,
              height: 500,
              margin: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("assets/images/page3.png"),
              )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              color: Colors.white,
              child: Center(
                child: Text(
                  'With GOAT, you can follow all the major football leagues and tournaments from around the world,'
                  ' including the English Premier League, '
                  'La Liga, Serie A, Bundesliga, UEFA Champions League, FIFA World Cup, and many more.'
                  ' Get access to live scores, match schedules, player statistics, '
                  'and in-depth analysis, all in one place.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Container(
                  width: 160,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text("TO HOME PAGE"))),
            ),
          ],
        ),
      ),
    );
  }
}
