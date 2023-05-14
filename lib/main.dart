import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/authentication/presentation/screens/signup_screen.dart';
import 'package:goat_app/firebase_options.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';


main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     //options: FirebaseOptions(
        //apiKey: "AIzaSyDPQF8KhUVEmUpw_Z40J0oJc8xSt_Bm0uo",
        //appId: "1:939312490837:web:d01b205a8783fb219b27dc",
        //messagingSenderId: "939312490837",
        //projectId: "goatapp-b4e08",
      );//);

  runApp(ProviderScope(child: App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
      theme: mainTheme,
    );
  }
}
