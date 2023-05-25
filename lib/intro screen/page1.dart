// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';
import 'package:goat_app/intro%20screen/page2.dart';

class page1 extends StatelessWidget {
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
                image: AssetImage("assets/images/page1.png"),
              )),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 5),
              color: Colors.white,
              child: Center(
                child: Text(
                  'Introducing "GOAT" - The Ultimate Football App for True Fans! '
                  ''
                  'Are you a football fanatic who lives and breathes the beautiful game? '
                  ''
                  'Do you want a one-stop destination for all things football,'
                  ' right at your fingertips? Look no further!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Container(
                        width: 128,
                        child: ElevatedButton(
                            onPressed: () {
                              /* Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Home(currentUser: ))); */
                            },
                            child: Text("SKIP"))),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                      width: 128,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => page2()));
                          },
                          child: Text("NEXT")))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
