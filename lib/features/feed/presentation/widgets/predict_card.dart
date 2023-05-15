import 'package:flutter/material.dart';
class PredictScreen extends StatefulWidget {
  @override
  _PredictScreenState createState() => _PredictScreenState();
}

class _PredictScreenState extends State<PredictScreen> {
  TextEditingController _homeScoreController = TextEditingController();
  TextEditingController _awayScoreController = TextEditingController();

  @override
  void dispose() {
    _homeScoreController.dispose();
    _awayScoreController.dispose();
    super.dispose();
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
              // Get the predicted scores
              String homeScore = _homeScoreController.text;
              String awayScore = _awayScoreController.text;

              // Perform any desired actions with the predicted scores
              // For example, you can display a success message or send the prediction to an API

              // Clear the input fields
              _homeScoreController.clear();
              _awayScoreController.clear();
            },
            child: Text("Predict"),
          ),
        ],
      ),
    );
  }
}