import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
class Statistics extends StatelessWidget {
  final String homeTeamName;
  final String awayTeamName;
  final String homeTeamLogo;
  final String awayTeamLogo;
  final String venueName;
  final String date;
  final String time;
  final int homeScore;
  final int awayScore;

  Statistics({
    required this.homeTeamName,
    required this.awayTeamName,
    required this.homeTeamLogo,
    required this.awayTeamLogo,
    required this.venueName,
    required this.date,
    required this.time,
    required this.homeScore,
    required this.awayScore,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Text('PREDICT',style: TextStyle(color: Colors.black)),
                Text('LINEUP',style: TextStyle(color: Colors.black)),
                Text('STATS',style: TextStyle(color: Colors.black)),
                Text('H2H',style: TextStyle(color: Colors.black))
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [

              Column(
                children: [
                  Text('Home Team: $homeTeamName'),
                  Text('Away Team: $awayTeamName'),
                  Text('Venue: $venueName'),
                  Text('Date: $date'),
                  Text('Time: $time'),
                  Text('Home Score: $homeScore'),
                  Text('Away Score: $awayScore'),
                ],
              ),
              // Your H2H tab content
            ],
          ),
        ),
      ),
    );
  }
}

