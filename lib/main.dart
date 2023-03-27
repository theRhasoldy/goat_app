import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goat_app/API/api_manger.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/features/authentication/presentation/screens/greeter_screen.dart';
import 'package:goat_app/firebase_options.dart';
import 'package:goat_app/models/user.dart';
import 'package:goat_app/routing/wrapper.dart';
import 'features/authentication/presentation/screens/signin_screen.dart';
import 'package:goat_app/features/feed/presentation/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
      theme: mainTheme,
    );
  }
}
