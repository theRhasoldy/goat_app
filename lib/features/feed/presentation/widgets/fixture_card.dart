import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/feed/presentation/screens/statistics_screen.dart';
import 'package:goat_app/features/feed/presentation/widgets/predict_card.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:goat_app/models/user.dart';

Widget? FixtureCard(
    List<FixtureResponse> response,
    BuildContext context,
    int index, {
      UserModel? currentUser,
      bool isStatistics = false,
    }) {
  try {
    List<String>? format = response[index].fixture.date?.split("T");
    String date = format?[0] ?? "TBD";
    String time = format?[1].split("+")[0].split(":").sublist(0, 2).join(":") ?? "TBD";

    int homeScore = response[index].goals.home ?? 0;
    int awayScore = response[index].goals.away ?? 0;

    if (response[index].fixture.status.short != "NS") {
      time = response[index].fixture.status.elapsed.toString();
    }

    return GestureDetector(
      onTap: () => isStatistics
          ? null
          : Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => FixtureDetailsTabs(
            response: response,
            index: index,
            currentUser: currentUser,
          ),
        ),
      ),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
          ),
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6.5,
                    child: Image.network(response[index].teams.home.logo ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      response[index].teams.home.name ?? '',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(homeScore.toString(),style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),), // Display home score
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          response[index].fixture.venue.name ?? '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          date,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey[400]!,
                          ),
                          color: Colors.grey[100],
                        ),
                        child: Text(
                          time,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6.5,
                    child: Image.network(response[index].teams.away.logo ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      response[index].teams.away.name ?? '',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent
                      ),
                    ),
                  ),
                  Text(awayScore.toString(),style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),), // Display away score
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




