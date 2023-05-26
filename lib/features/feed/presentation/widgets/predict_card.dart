import 'package:flutter/material.dart';
import 'package:goat_app/models/fixture.dart';

Widget PredictScreen({
  bool isStatistics = false,
  required List<FixtureResponse> response,
  required BuildContext context,
  required int index,
}) {
  int scoreUser = 0;
  TextEditingController _homeScoreController = TextEditingController();
  TextEditingController _awayScoreController = TextEditingController();

  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          controller: _homeScoreController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: "Home Team Score",
          ),
        ),
        TextField(
          controller: _awayScoreController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: "Away Team Score",
          ),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            String homeScore = _homeScoreController.text;
            String awayScore = _awayScoreController.text;

            // Clear the input fields
            _homeScoreController.clear();
            _awayScoreController.clear();

            showSavedDialog(context);

            // Simulating the fixture finish
            Future.delayed(Duration(seconds: response[index].fixture.status.elapsed ?? 0), () {
              Object score = response[index].score.fulltime ?? 0;

              if (homeScore == score.toString() && awayScore == score.toString()) {
                showResultDialog(context, "Congratulations, your prediction is correct!");
              } else {
                showResultDialog(context, "Sorry, your prediction is not correct.");
              }
            });
          },
          child: Text("Predict"),
        ),
      ],
    ),
  );
}

void showResultDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Prediction Result"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}

void showSavedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Saved!"),
        content: Text("Your prediction has been saved."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}
