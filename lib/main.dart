import 'package:admob_flutter/admob_flutter.dart';
import 'package:cooking_app/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize();
  runApp(CookingApp());
}

class CookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Cooking',
      home: SignInPage(),
    );
  }
}
