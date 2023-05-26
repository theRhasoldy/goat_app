import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/common/widgets/bottom_navigation_bar.dart';
import 'package:goat_app/features/authentication/logic/auth.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/feed/logic/api_service.dart';
import 'package:goat_app/features/feed/presentation/widgets/fixture_card.dart';
import 'package:goat_app/features/feed/presentation/widgets/loading_card.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:goat_app/models/user.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  UserModel? currentUser;
  Home({Key? key, this.currentUser}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FixtureModel? _fixtureModel;
  bool isLoading = true;

  int _selectedDay = 0;
  int _pressedIndex = -1;

  String getWeekdayAbbreviation(int index) {
    final now = DateTime.now();
    final today = now.weekday;
    final difference = index;

    if (difference == 0) {
      return 'TOD'; // Today
    } else if (difference == 1) {
      return 'TMW'; // Tomorrow
    } else {
      final weekday = (today + difference);
      final abbreviatedWeekday = DateFormat('EEE').format(
        now.add(Duration(days: difference)),
      );
      return abbreviatedWeekday;
    }
  }

  Future<void> _getFixtureData(String date) async {
    final ApiService apiService = ApiService();
    final FixtureModel? fixtureModel = await apiService.getMatches(date:date);
    if (mounted) {
      setState(() {
        isLoading = false;
        _fixtureModel = fixtureModel;
      });
    }
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
            .format(now.add(Duration(days: _selectedDay)));
        dates.add(date);
      }

      String selectedDate;
      if (index == 0) {
        selectedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
      } else if (index == 1) {
        selectedDate = DateFormat('yyyy-MM-dd')
            .format(DateTime.now().add(Duration(days: 1)));
      } else {
        selectedDate = dates[index];
      }
      _getFixtureData(selectedDate);
    });
  }

  @override
  void initState() {
    super.initState();
    print(widget.currentUser?.fullname);
    String _date = DateFormat('yyyy-MM-dd').format(DateTime.now());
    _getFixtureData(_date);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fixtures"),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () async {
                final auth = FirebaseAuth.instance;
                try {
                  await auth.signOut();
                } catch (e) {
                  print(e.toString());
                }
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignIn()),
                );
              },
              icon: const Icon(Icons.logout_outlined),
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 0; i < 7; i++)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(getWidth(context) / 800),
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
                          getWeekdayAbbreviation(i),
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
                          getWeekdayAbbreviation(i),
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
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: _fixtureModel?.results ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  return isLoading
                      ? Center(
                    child: LoadingCard(height: 150),
                  )
                      : ListTile(
                    title: FixtureCard(
                      _fixtureModel!.response,
                      context,
                      index,
                      currentUser: widget.currentUser,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

