import 'package:flutter/material.dart';
// import 'package:spidylib/login_page.dart';
import 'package:spidylib/splash-screen.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
			home: WelcomePage(),
    );
  }
}
