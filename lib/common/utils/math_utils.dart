import 'package:flutter/animation.dart';

String nullToZero(String text) => text == "null" ? "0" : text;

double parsePercentageToDouble(String text) =>
    double.parse(text.toString().replaceAll('%', '')) / 100;

Color stringToColor(String colorString) {
  String formattedString = colorString.replaceAll('#', '');
  int colorValue = int.parse(formattedString, radix: 16);

  return Color(colorValue).withOpacity(1.0);
}
