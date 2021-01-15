import 'package:flutter/material.dart';
import 'package:spidylib/constants.dart';

import 'components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buat Akun",
        ),
      ),
      body: Body(),
    );
  }
}
