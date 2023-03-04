import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/presentation/screens/greeter_screen.dart';
import 'package:goat_app/features/authentication/presentation/screens/signup_screen.dart';
import 'package:goat_app/features/authentication/presentation/widgets/greeter_appbar.dart';
import 'package:goat_app/features/authentication/presentation/widgets/seperator.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: GreeterAppBar("JOIN THE GOATS", context),
            body: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: lightColorScheme.secondary,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20)),
                  ),
                  height: getHeight(context) / 2,
                  child: Image.asset(
                    'assets/images/signin-cover.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: getHeight(context) / 48,
                    horizontal: getWidth(context) / 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FieldHeader(label: "EMAIL"),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'johndoe@email.com',
                          ),
                        ),
                      ),
                      FieldHeader(label: "PASSWORD"),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: TextField(
                          obscureText: true,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: const Text('SIGN IN'),
                      ),
                      Sep(),
                      OutlinedButton(
                          onPressed: () => {
                                // Navigate to Sign in Page
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SignUp()))
                              },
                          child: Text("SIGN UP"))
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class FieldHeader extends StatelessWidget {
  final String label;
  const FieldHeader({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: lightColorScheme.secondary,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
