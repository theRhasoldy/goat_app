import 'package:flutter/material.dart';
import 'package:goat_app/API/freezed_api.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:goat_app/models/statistics.dart';

class StatsRow extends StatefulWidget {
  const StatsRow({Key? key, final FixtureModel? fixture}) : super(key: key);

  @override
  State<StatsRow> createState() => _StatsRowState();
}

class _StatsRowState extends State<StatsRow> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('5'),
                Text('Shots'),
                Text('10'),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    value: 0.65,
                    color: Colors.grey,
                    backgroundColor: Colors.green,
                  ),
                ),
                Expanded(
                  child: LinearProgressIndicator(
                    value: 0.8,
                    color: Colors.blue,
                    backgroundColor: Colors.grey,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
