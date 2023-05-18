// ignore_for_file: non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/feed/presentation/screens/statistics_screen.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:intl/intl.dart';

// ignore: body_might_complete_normally_nullable
Widget? FixtureCard(
    List<FixtureResponse> response, BuildContext context, int index,
    {bool isStatistics = false}) {
  try {
    List<String>? format = response[index].fixture.date?.split("T");
    String date = format?[0] ?? "TBD";
    String time =
        format?[1].split("+")[0].split(":").sublist(0, 2).join(":") ?? "TBD";

    int homeScore = response[index].goals.home ?? 0;
    int awayScore = response[index].goals.away ?? 0;

    if (response[index].fixture.status.short != "NS") {
      time = response[index].fixture.status.elapsed.toString();
    }

    return GestureDetector(
      onTap: () => isStatistics
          ? null
          : Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FixtureDetailsTabs(
                    response: response,
                    index: index,
                  ))),
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
                    child: Image.network(response[index].teams.home.logo ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      response[index].teams.home.name ?? '',
                      style: textTheme.labelMedium,
                    ),
                  ),
                  Text(homeScore.toString()), // Display home score
                ],
              ),
              SizedBox(
                child: Column(
                  children: [
                    Text(response[index].fixture.venue.name ?? ''),
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
                    child: Image.network(response[index].teams.away.logo ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      response[index].teams.away.name ?? '',
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
