import 'package:flutter/material.dart';
import 'package:goat_app/API/freezed_api.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/models/fixture.dart';

class FixtureCard extends StatefulWidget {
  const FixtureCard({super.key});

  @override
  State<FixtureCard> createState() => _FixtureCardState();
}

class _FixtureCardState extends State<FixtureCard> {
  FixtureModel? _fixtureModel;

  @override
  void initState() {
    super.initState();
    _getFixtureData();
  }

  Future<void> _getFixtureData() async {
    final ApiService apiService = ApiService();
    final FixtureModel? fixtureModel = await apiService.getMatches();
    setState(() {
      _fixtureModel = fixtureModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: getWidth(context) / 5,
                    child: Image.network(
                        _fixtureModel?.response[0].teams.home.logo ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      _fixtureModel?.response[0].teams.home.name ?? '',
                      style: textTheme.labelMedium,
                    ),
                  )
                ],
              ),
              SizedBox(
                child: Column(
                  children: [
                    Text(_fixtureModel?.response[0].fixture.venue.name ?? ''),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(_fixtureModel?.response[0].fixture.date ?? ''),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: getWidth(context) / 5,
                    child: Image.network(
                         _fixtureModel?.response[0].teams.away.logo ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      _fixtureModel?.response[0].teams.away.name ?? '',
// Use the null-aware operator (??) to provide a default value
                      style: textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}