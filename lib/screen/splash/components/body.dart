import 'package:flutter/material.dart';
import 'package:spidylib/constants.dart';
import 'package:spidylib/screen/sign_in/sign_in_screen.dart';
import 'package:spidylib/size_config.dart';

import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  // Spacer(),
                  // Text(
                  //   "GUAJH",
                  //   style: TextStyle(
                  //     fontSize: getPropotionateScreenWidth(36),
                  //     color: kPrimaryColor,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  Spacer(),
                  Image.asset(
                    "assets/images/evernote-logo-sketch.png",
                    height: getPropotionateScreenHeight(265),
                    width: getPropotionateScreenWidth(235),
                  ),
                  Spacer(),
                  Text(
                    "Guajh",
                    style: TextStyle(
                      fontSize: getPropotionateScreenWidth(36),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Your best elephant library",
                    style: TextStyle(
                      fontSize: getPropotionateScreenWidth(14),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getPropotionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(flex: 1),
                      DefaultButton(
                        text: "Get Started",
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
