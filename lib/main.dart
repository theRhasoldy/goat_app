import 'package:flutter/material.dart';
import 'package:goat_app/features/authentication/presentation/greeter_screen.dart';

void main() {
  runApp(GOAT());
}

class GOAT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Greeter(),
    );
  }
}
