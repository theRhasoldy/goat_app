import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/feed/presentation/widgets/fixture_card.dart';

import '../../../API/freezed_api.dart';
import '../../../models/freezed_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<String?> getData() async {
    // final response = APIService(id: "33", type: "teams");
    // ApiWrapper? reply = await response.fetchData();
    // print("UI: " + reply!.response![0].team!.name.toString());
    // final ApiService apiService = ApiService();
    // final TeamModel teamModel = await apiService.getTeamDetails();
    //
    // print("//////////////////////////////////////////");
    // print(teamModel.response[0].team.name);
  }

  @override
  initState() {
    // getData();
  }

  @override
  Widget build(BuildContext context) {
    // print(FirebaseAuth.instance.currentUser);
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Hello"), centerTitle: false, actions: [
        IconButton(
          onPressed: () async {
            final auth = FirebaseAuth.instance;
            try {
              await auth.signOut();
            } catch (e) {
              print(e.toString());
              null;
            }
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const SignIn()));
          },
          icon: const Icon(Icons.logout_outlined),
        )
      ]),
      body: Column(children: [FixtureCard()]),
    ));
  }
}
