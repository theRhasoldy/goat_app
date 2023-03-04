import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
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
            body: Column(
              children: [
                Container(
                  color: lightColorScheme.secondary,
                  height: 20,
                ),
                Image.asset(
                  'assets/images/signin-cover.png',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Column(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("EMAIL"),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'johndoe@email.com',
                              ),
                            ),
                            Text("PASSWORD"),
                            TextField(
                              obscureText: true,
                            ),
                          ]),
                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                        onPressed: () {},
                        child: const Text('SIGN IN'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Sep(),
                      ),
                      OutlinedButton(
                          onPressed: () => {}, child: Text("SIGN UP"))
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
