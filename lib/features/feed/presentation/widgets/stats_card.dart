import 'package:flutter/material.dart';
class StatsRow extends StatefulWidget {
  const StatsRow({Key? key}) : super(key: key);

  @override
  State<StatsRow> createState() => _StatsRowState();
}

class _StatsRowState extends State<StatsRow> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Row(
          children: [
            Text('5'),
            Text('Shots'),
            Text('10'),
          ],

        ),
        LinearProgressIndicator(
          value: 0.5,
          color: Colors.pink,
        ),
        LinearProgressIndicator(
        value: 0.5,
        color: Colors.pink,
        ),
      ],
    );
  }
}
