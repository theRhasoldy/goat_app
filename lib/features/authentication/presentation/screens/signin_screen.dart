import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
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
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20)),
                  ),
                  height: getHeight(context) / 2.5,
                  child: Image.asset(
                    'assets/images/HENRY.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: getHeight(context) / 16,
                    horizontal: getWidth(context) / 8,
                  ),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credentials",
                          style: TextStyle(
                            color: lightColorScheme.secondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 24),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: const ButtonStyle(),
                          onPressed: () {},
                          child: const Text('SIGN IN'),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => {},
                              icon: Icon(Icons.facebook),
                              iconSize: 32,
                              color: lightColorScheme.primary,
                            ),
                            SizedBox(width: getWidth(context) / 12),
                            IconButton(
                              onPressed: () => {},
                              icon: Icon(Icons.g_translate),
                              iconSize: 32,
                              color: lightColorScheme.primary,
                            )
                          ],
                        ),
                        const Sep(),
                        OutlinedButton(
                            onPressed: () => {
                                  // Navigate to Sign in Page
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SignUp()))
                                },
                            child: const Text("SIGN UP"))
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
