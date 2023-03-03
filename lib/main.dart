import 'package:flutter/material.dart';
import 'package:goat_app/features/authentication/presentation/screens/greeter_screen.dart';

import 'features/authentication/presentation/screens/signin_screen.dart';

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
