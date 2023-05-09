String nullToZero(String text) => text == "null" ? "0" : text;

double parsePercentageToDouble(String text) =>
    double.parse(text.toString().replaceAll('%', '')) / 100;
