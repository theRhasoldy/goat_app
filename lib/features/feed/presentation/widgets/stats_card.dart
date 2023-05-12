import 'package:flutter/material.dart';
import 'package:goat_app/API/freezed_api.dart';
import 'package:goat_app/common/utils/math_utils.dart';
import 'package:goat_app/models/statistics_model.dart';

Widget? StatisticRow(
    StatisticsModel? statistic, BuildContext context, int index) {
  dynamic homeStatValue = statistic?.response[0].statistics?[index]?.value ?? 0;
  dynamic awayStatValue = statistic?.response[1].statistics?[index]?.value ?? 0;
  dynamic awayIndicatorChunk;

  try {
    awayIndicatorChunk = awayStatValue /
        ((homeStatValue + awayStatValue) != 0.0
            ? (homeStatValue + awayStatValue)
            : 1.0);
  } catch (e) {
    if (homeStatValue != null && awayStatValue != null) {
      awayIndicatorChunk = parsePercentageToDouble(awayStatValue) /
          (parsePercentageToDouble(homeStatValue) +
              parsePercentageToDouble(awayStatValue));
    }
  }
  return Padding(
    padding: EdgeInsets.all(25),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(nullToZero(homeStatValue.toString())),
            Text(statistic?.response[0].statistics?[index]?.type =="expected_goals"? "Expected Goals":statistic?.response[0].statistics?[index]?.type
                ),
            Text(nullToZero(awayStatValue.toString())),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: awayIndicatorChunk,
                color: Colors.grey,
                backgroundColor:
                    homeStatValue == 0 ? Colors.grey : Colors.green,
              ),
            ),
            Expanded(
              child: LinearProgressIndicator(
                value: awayIndicatorChunk,
                color: Colors.blue,
                backgroundColor: Colors.grey,
              ),
            )
          ],
        ),
      ],
    ),
  );
}
