import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/authentication/presentation/widgets/greeter_appbar.dart';
import 'package:goat_app/features/authentication/presentation/widgets/seperator.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fullNameController = new TextEditingController();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  child: ListView(reverse: true, children: [
                    OutlinedButton(
                        onPressed: () => {
                              // Navigate to Sign in Page
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignIn()))
                            },
                        child: const Text("SIGN IN")),
                    Sep(),
                    Padding(
                      padding: EdgeInsets.only(top: 24.0),
                      child: ElevatedButton(
                        style: const ButtonStyle(),
                        onPressed: () {},
                        child: const Text('CREATE ACCOUNT'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
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
