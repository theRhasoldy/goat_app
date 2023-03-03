import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:mainTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: <Widget>[Center(child:
        Image.asset('assets/images/CR7.png',height:450, width: 500,),
        ),
          Column(children: [
              Text("EMAIL"),
              Container(
                width: 300,
                  height: 70,
                  child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueGrey,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
                  hintText: 'user@mail.com',
                ),
                    style: TextStyle(fontSize: 15),
                minLines: 1,
                maxLines: 1,
              )
              ),

            Text("PASSWORD"),
            Container(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
                    hintText: 'Password',
                  ),
                  style: TextStyle(fontSize: 15),
                  minLines: 1,
                  maxLines: 1,
                )
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                          )
                      )
                  ),
                onPressed: () {},
                child: const Text('SIGN IN'),
              ),
            ),
            Column(children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                ),
                Text("OR"),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                ),
              ]),
            ]),
            Container(
              width: 150,
              child: ElevatedButton(
              style:

              ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )
                  )
              ),
              onPressed: () {},
              child: const Text('SIGN UP'),
            ),
            ),
            ],
            )

        ],
        )
      ),
    );
  }
}

