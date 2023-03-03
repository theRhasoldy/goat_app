import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goat_app/common/config/theme.dart';

PreferredSizeWidget GreeterAppBar(String title, BuildContext context) {
  // Support for android
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: lightColorScheme.secondary, // status bar color
  ));

  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: lightColorScheme.secondary, // status bar color
    ),
    title: Text(
      title,
      style: TextStyle(
          color: lightColorScheme.background,
          fontWeight: FontWeight.bold,
          fontSize: 28),
    ),
    backgroundColor: lightColorScheme.secondary,
  );
}
