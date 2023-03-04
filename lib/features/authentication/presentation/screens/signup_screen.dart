import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/authentication/presentation/widgets/greeter_appbar.dart';
import 'package:goat_app/features/authentication/presentation/widgets/seperator.dart';
import 'package:goat_app/models/user.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String fullname = "";
    return MaterialApp(
      theme: mainTheme,
      home: SafeArea(
          child: Scaffold(
        appBar: GreeterAppBar("BE THE GOAT", context),
        body: Container(
            height: double.infinity,
            color: lightColorScheme.secondary,
            child: Stack(children: [
              Image.asset(
                "assets/images/signin-cover.png",
                height: double.infinity,
                alignment: Alignment.bottomCenter,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(context) / 8,
                    vertical: getHeight(context) / 16),
                child: Form(
                  key: _formKey,
                  child: ListView(reverse: true, children: [
                    OutlinedButton(
                        onPressed: () => {
                              // Navigate to Sign in Page
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignIn()))
                            },
                        child: const Text("SIGN IN")),
                    const Sep(),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: ElevatedButton(
                        style: const ButtonStyle(),
                        onPressed: () {
                          final newUser = User(
                              fullname: fullname,
                              email: "hello@gmail.com",
                              uid: "20193793");
                        },
                        child: const Text('CREATE ACCOUNT'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Username',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        onChanged: (value) => fullname = value,
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ])),
      )),
    );
  }
}
