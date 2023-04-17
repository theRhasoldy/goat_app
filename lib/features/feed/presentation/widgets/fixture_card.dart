import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:intl/intl.dart';

Widget? FixtureCard(FixtureModel? fixture, BuildContext context, int index) {
  try {
    List<String>? format = fixture?.response[index].fixture.date?.split("T");
    String date = format?[0] ?? "TBD";
    String time =
        format?[1].split("+")[0].split(":").sublist(0, 2).join(":") ?? "TBD";

    int homeScore = fixture?.response[index].goals.home ?? 0;
    int awayScore = fixture?.response[index].goals.away ?? 0;

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
                    width: getWidth(context) / 6.5,
                    child: Image.network(
                        fixture?.response[index].teams.home.logo ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      fixture?.response[index].teams.home.name ?? '',
                      style: textTheme.labelMedium,
                    ),
                  ),
                  Text(homeScore.toString()), // Display home score
                ],
              ),
              SizedBox(
                child: Column(
                  children: [
                    Text(fixture?.response[index].fixture.venue.name ?? ''),
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
                        fixture?.response[index].teams.away.logo ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      fixture?.response[index].teams.away.name ?? '',
                      style: textTheme.labelMedium,
                    ),
                  ),
                  Text(awayScore.toString()), // Display away score
                ],
              ),
            ],
          ),
        ),
      ),
    );
  } catch (e) {
    print(e);
  }
}

