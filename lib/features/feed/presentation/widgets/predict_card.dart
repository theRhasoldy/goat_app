import 'package:flutter/material.dart';
import 'package:goat_app/models/fixture.dart';

class PredictScreen extends StatefulWidget {
  final bool isStatistics;
  final List<FixtureResponse> response;
  final BuildContext context;
  final int index;

  PredictScreen({
    this.isStatistics = false,
    required this.response,
    required this.context,
    required this.index,
  });

  @override
  _PredictScreenState createState() => _PredictScreenState();
}

class _PredictScreenState extends State<PredictScreen> {
  int scoreUser = 0;
  TextEditingController _homeScoreController = TextEditingController();
  TextEditingController _awayScoreController = TextEditingController();

  @override
  void dispose() {
    _homeScoreController.dispose();
    _awayScoreController.dispose();
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
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
              Future.delayed(Duration(seconds: widget.response[widget.index].fixture.status.elapsed ?? 0), () {
                Object score = widget.response[widget.index].score.fulltime ?? 0;

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
}
