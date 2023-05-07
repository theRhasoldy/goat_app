import 'package:flutter/material.dart';
import 'package:goat_app/API/freezed_api.dart';

import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/feed/presentation/widgets/fixture_card.dart';
import 'package:goat_app/features/feed/presentation/widgets/stats_card.dart';
import 'package:goat_app/models/statistics.dart';



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
              // Predict tab
              Icon(Icons.directions_car),
              // Lineup tab
              Icon(Icons.directions_transit),
              // Stats tab
              StatsCard(
                homeTeamName: homeTeamName,
                awayTeamName: awayTeamName,
                homeTeamLogo: homeTeamLogo,
                awayTeamLogo: awayTeamLogo,
                venueName: venueName,
                date: date,
                time: time,
                homeScore: homeScore,
                awayScore: awayScore,
              ),
              // H2H tab
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

class StatsCard extends StatelessWidget {
  final String homeTeamName;
  final String awayTeamName;
  final String homeTeamLogo;
  final String awayTeamLogo;
  final String venueName;
  final String date;
  final String time;
  final int homeScore;
  final int awayScore;

  StatsCard({
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

  Widget build(BuildContext context) {
    // return Row(children:[
    //   FixtureCard(fixture, context, index)
    //   StatsRow()
    // ]);
    return Row(
        children: [Card(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: getWidth(context) / 6.5,
                    child: Image.network(
                        this.homeTeamLogo ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      this.homeTeamName ?? '',
                      style: textTheme.labelMedium,
                    ),
                  ),
                  Text(homeScore.toString()), // Display home score
                ],
              ),
              SizedBox(
                child: Column(
                  children: [
                    Text(this.venueName ?? ''),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(date),
                    ),
                    Text(time),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: getWidth(context) / 6.5,
                    child: Image.network(
                        this.awayTeamLogo ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      this.awayTeamName ?? '',
                      style: textTheme.labelMedium,
                    ),
                  ),
                  Text(awayScore.toString()),
                  // Display away score
                ],
              ),
    ],
          ),
        ),
    ),

          StatsRow()

      ]);


  }

}



