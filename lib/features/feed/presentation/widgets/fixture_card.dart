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
  Future<String?> getData() async {
    // final response = APIService(id: "33", type: "teams");
    // ApiWrapper? reply = await response.fetchData();
    // print("UI: " + reply!.response![0].team!.name.toString());
    final ApiService apiService = ApiService();
    final FixtureModel fixtureModel = await apiService.getMatches();
    print("FIXTURE//////////////////////////////////////////");

    print(fixtureModel.response[0].teams.home.name);
  }

  @override
  initState() {
    getData();
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
                          "https://media.api-sports.io/football/teams/33.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "Manchester United",
                        style: textTheme.labelMedium,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  child: Column(children: [
                    Text("Stadium"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("21:00"),
                    )
                  ]),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: getWidth(context) / 5,
                      child: Image.network(
                          "https://media.api-sports.io/football/teams/33.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "Manchester United",
                        style: textTheme.labelMedium,
                      ),
                    )
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
