import 'package:card_loading/card_loading.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/API/freezed_api.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/feed/presentation/widgets/fixture_card.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FixtureModel? _fixtureModel;
  bool isLoading = true;

  Future<void> _getFixtureData() async {
    DateTime now = new DateTime.now();
    DateFormat formatter = new DateFormat('yyyy-MM-dd');

    String formattedDate = formatter.format(now);

    final ApiService apiService = ApiService();
    final FixtureModel? fixtureModel =
        await apiService.getMatches(date: "2023-04-15");
    setState(() {
      isLoading = false;
      _fixtureModel = fixtureModel;
    });
  }

  @override
  void initState() {
    super.initState();
    _getFixtureData();
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
        body: ListView.builder(
            itemCount: _fixtureModel?.results,
            itemBuilder: (BuildContext context, int index) {
              return isLoading
                  ? Center(
                      child: CardLoading(
                        height: 150,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                      ),
                    )
                  : FixtureCard(_fixtureModel, context, index);
            }),
      ),
    );
  }
}
