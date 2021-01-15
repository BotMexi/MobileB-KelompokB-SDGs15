import 'package:flutter/material.dart';
import 'package:spidylib/api.dart';
import 'package:spidylib/constants.dart';
import 'package:spidylib/routes.dart';
// import 'package:spidylib/login_page.dart';
import 'package:spidylib/screen/splash/splash_screen.dart';
import 'package:spidylib/theme.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpidyLib',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
