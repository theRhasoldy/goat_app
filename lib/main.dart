import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("G.O.A.T"),
        ),
      ),
    );
  }
}
