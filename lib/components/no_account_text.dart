import 'package:flutter/material.dart';
import 'package:spidylib/screen/forgot_password/forgot_password_screen.dart';
import 'package:spidylib/screen/sign_up/sign_up_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "belum punya akun?",
          style: TextStyle(fontSize: getPropotionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Buat Akun",
            style: TextStyle(
              fontSize: getPropotionateScreenWidth(16),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
