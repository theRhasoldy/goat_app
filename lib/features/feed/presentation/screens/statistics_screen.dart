import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/features/feed/presentation/widgets/fixture_card.dart';
import 'package:goat_app/models/fixture.dart';

class Statistics extends StatelessWidget {
  final FixtureModel? fixture;
  final int index;

  Statistics({
    required this.fixture,
    required this.index,
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
                Text('PREDICT', style: TextStyle(color: Colors.black)),
                Text('LINEUP', style: TextStyle(color: Colors.black)),
                Text('STATS', style: TextStyle(color: Colors.black)),
                Text('H2H', style: TextStyle(color: Colors.black))
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
              FixtureCard(fixture, context, index) ?? Text("Null"),
              // H2H tab
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
