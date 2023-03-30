import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:goat_app/API/api_manger.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/models/soccer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<String?> getData() async {
    final response = APIService(id: "33", type: "teams");
    ApiWrapper? reply = await response.fetchData();
    print("UI: " + reply!.response![0].team!.name.toString());
  }

  @override
  initState() {
    getData();
  }

  @override
  Widget build(BuildContext context) {
    // print(FirebaseAuth.instance.currentUser);
    return MaterialApp(
      home: Scaffold(
          appBar:
              AppBar(title: const Text("Hello"), centerTitle: false, actions: [
            IconButton(
              onPressed: () async {
                final auth = FirebaseAuth.instance;
                try {
                  await auth.signOut();
                } catch (e) {
                  print(e.toString());
                  null;
                }
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SignIn()));
              },
              icon: const Icon(Icons.logout_outlined),
            )
          ]),
          body: const Text('Test')),
    );
  }
}
