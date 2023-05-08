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

  int _selectedDay = 0;
  int _pressedIndex = -1;

  Future<void> _getFixtureData(String date) async {
    final ApiService apiService = ApiService();
    final FixtureModel? fixtureModel = await apiService.getMatches(date: date);
    setState(() {
      isLoading = false;
      _fixtureModel = fixtureModel;
    });
  }

  void _onButtonPressed(int index) {
    setState(() {
      _selectedDay = index;
      _pressedIndex = index;
      isLoading = true;
      final DateTime now = DateTime.now();
      final List<String> dates = [];
      for (int i = 0; i < 7; i++) {
        final String date = DateFormat('yyyy-MM-dd')
            .format(now.add(Duration(days: i - now.weekday)));
        dates.add(date);
      }
      _getFixtureData(dates[index]);
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
                for (int i = 0; i < 7; i++)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(getWidth(context) / 400),
                      child: _pressedIndex == i
                          ? ElevatedButton(
                              onPressed: () => _onButtonPressed(i),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                primary: Colors.green,
                              ),
                              child: Text(
                                DateFormat('EEE').format(DateTime.now().add(
                                    Duration(
                                        days: i - DateTime.now().weekday))),
                                style: TextStyle(
                                  color: Color(0xFF6750A4),
                                  fontSize: 15,
                                ),
                              ),
                            )
                          : TextButton(
                              onPressed: () => _onButtonPressed(i),
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: Text(
                                DateFormat('EEE').format(DateTime.now().add(
                                    Duration(
                                        days: i - DateTime.now().weekday))),
                                style: TextStyle(
                                  color: _selectedDay == i
                                      ? Colors.green
                                      : lightColorScheme.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ),
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
