// ignore_for_file: use_key_in_widget_constructors, camel_case_types, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';
import 'package:goat_app/intro%20screen/page3.dart';
class page2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: 362,
              height: 500,
              margin: EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("assets/images/page2.png"),
              )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5,
                left: 10,),
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
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Container(
                        width: 128,
                        child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Home()));
                            }, child: Text(
                            "SKIP")
                        )
                    ),
                  ),
                  SizedBox(width: 70,),
                  Container(
                      width: 128,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => page3()));
                          }, child: Text(
                          "NEXT")
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
