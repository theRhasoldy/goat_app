import 'package:card_loading/card_loading.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/API/freezed_api.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
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
  int _selectedDay = 1;

  Future<void> _getFixtureData(String date) async {
    final ApiService apiService = ApiService();
    final FixtureModel? fixtureModel = await apiService.getMatches(date: date);
    setState(() {
      isLoading = false;
      _fixtureModel = fixtureModel;
    });
  }

  void _onButtonPressed(int index, String date) {
    setState(() {
      _selectedDay = index;
      _getFixtureData(date);
    });
  }

  @override
  void initState() {
    super.initState();
    String _date = DateFormat('yyyy-MM-dd').format(DateTime.now());
    _getFixtureData(_date);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
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
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(getWidth(context) / 32),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shadowColor:
                                MaterialStatePropertyAll(Colors.transparent),
                            backgroundColor: MaterialStatePropertyAll(
                                _selectedDay == 0
                                    ? Colors.green
                                    : Colors.transparent)),
                        onPressed: () {
                          String _date = DateTime.now()
                              .subtract(Duration(days: 1))
                              .toString()
                              .split(" ")[0];
                          print(_date);
                          _onButtonPressed(0, _date);
                        },
                        child: Text(
                          "YEST",
                          style: TextStyle(color: lightColorScheme.primary),
                        )),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(getWidth(context) / 32),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shadowColor:
                                MaterialStatePropertyAll(Colors.transparent),
                            backgroundColor: MaterialStatePropertyAll(
                                _selectedDay == 1
                                    ? Colors.green
                                    : Colors.transparent)),
                        onPressed: () {
                          String _date =
                              DateTime.now().toString().split(" ")[0];
                          print(_date);
                          _onButtonPressed(1, _date);
                        },
                        child: Text(
                          "TOD",
                          style: TextStyle(color: lightColorScheme.primary),
                        )),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(getWidth(context) / 32),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shadowColor:
                                MaterialStatePropertyAll(Colors.transparent),
                            backgroundColor: MaterialStatePropertyAll(
                                _selectedDay == 2
                                    ? Colors.green
                                    : Colors.transparent)),
                        onPressed: () {
                          String _date = DateTime.now()
                              .add(Duration(days: 1))
                              .toString()
                              .split(" ")[0];
                          print(_date);
                          _onButtonPressed(2, _date);
                        },
                        child: Text(
                          "TOM",
                          style: TextStyle(color: lightColorScheme.primary),
                        )),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _fixtureModel?.results,
                  itemBuilder: (BuildContext context, int index) {
                    return isLoading
                        ? Center(
                            child: CardLoading(
                              height: 150,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                            ),
                          )
                        : FixtureCard(_fixtureModel, context, index);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
