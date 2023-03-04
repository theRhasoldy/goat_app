import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/features/authentication/presentation/widgets/greeter_appbar.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      home: SafeArea(
          child: Scaffold(
        appBar: GreeterAppBar("BE THE GOAT", context),
      )),
    );
  }
}
