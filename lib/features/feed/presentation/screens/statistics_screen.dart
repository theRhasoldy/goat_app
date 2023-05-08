import 'package:flutter/material.dart';
import 'package:goat_app/API/freezed_api.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/features/feed/presentation/widgets/fixture_card.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:goat_app/models/statistics_model.dart';

class FixtureDetailsTabs extends StatefulWidget {
  final FixtureModel? fixture;
  final int index;

  FixtureDetailsTabs({
    required this.fixture,
    required this.index,
  });

  @override
  State<FixtureDetailsTabs> createState() => _FixtureDetailsTabsState();
}

class _FixtureDetailsTabsState extends State<FixtureDetailsTabs> {
  StatisticsModel? _statisticsModel;

  Future<void> _getStatisticsData(String fixtureId) async {
    final ApiService apiService = ApiService();
    final StatisticsModel? statisticsModel =
        await apiService.getStatistics(fixture: fixtureId);
    print(statisticsModel);
    setState(() {
      _statisticsModel = statisticsModel;
    });
  }

  @override
  void initState() {
    super.initState();
    int _id = widget.fixture?.response[widget.index].fixture.id ?? 0;
    _getStatisticsData(_id.toString());
  }

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
              Column(
                children: [
                  FixtureCard(widget.fixture, context, widget.index) ??
                      Text("Null"),
                  Text(_statisticsModel?.response[0].toString() ?? "Nykk"),
                ],
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