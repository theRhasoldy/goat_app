import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: 49,
              height: 49,
            ),
            Center(
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/messi.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
              width: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Button action goes here
                  },
                  child: Text('SIGN UP'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(130, 40), // Set button corner radius
                  ),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('SIGN IN'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(130, 40),
                    ))
              ],
            ),
        SizedBox(height: 20,),
        Text('--------------------------OR---------------------------'),


            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF787579),
              ),
              onPressed: () {
                // Handle button press
              },
              icon: Image.asset(
                'assets/icons/google.png', // Replace with the path to your Google logo image
                height: 24, // Set the height of the logo
              ),
              label: Text('Continue with Google     '),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF787579),
              ),
              onPressed: () {
                // Handle button press
              },
              icon: Image.asset(
                'assets/icons/facebook-app-symbol (1).png', // Replace with the path to your Google logo image
                height: 24, // Set the height of the logo
              ),
              label: Text('Continue with Facebook'),
            ),],

        ),
      ),
    );
  }
}
