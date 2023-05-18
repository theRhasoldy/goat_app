// ignore_for_file: use_key_in_widget_constructors, camel_case_types, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
class page2 extends StatelessWidget {


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
                image: AssetImage("assets/images/page2.png"),
              )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              color: Colors.white,
              child: Center(
                child: Text(
                  'As the name suggests,'
                  'GOAT (Greatest of All Time) is a cutting-edge mobile application designed for true football fans.'
                  'Whether you are a die-hard supporter of a particular team,'
                  ' a fantasy football enthusiast, '
                  'or just someone who loves to stay updated with the latest football news and highlights,'
                  ' GOAT has it all.',
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
