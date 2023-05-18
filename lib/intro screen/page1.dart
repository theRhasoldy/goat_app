// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: 362,
              height: 556,
              margin: EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("assets/images/page1.png"),
              )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              color: Colors.white,
              child: Center(
                child: Text(
                  'Introducing "GOAT" - The Ultimate Football App for True Fans! '
                  ''
                  'Are you a football fanatic who lives and breathes the beautiful game? '        
                  ''
                  'Do you want a one-stop destination for all things football,'
                  ' right at your fingertips? Look no further!'
                  'The GOAT Football App is here to elevate your football experience to new heights.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight:FontWeight.bold,
                    ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
