import 'package:flutter/material.dart';
import 'package:spidylib/screen/home_screen/components/body.dart';
import 'package:spidylib/size_config.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Body(),
    );
  }
}
