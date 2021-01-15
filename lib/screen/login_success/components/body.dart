import 'package:flutter/material.dart';
import 'package:spidylib/components/default_button.dart';
import 'package:spidylib/screen/add_pict/add_pict_screen.dart';
import 'package:spidylib/screen/home_screen/home_screen.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/check.png",
            height: getPropotionateScreenHeight(265),
            width: getPropotionateScreenWidth(235),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Berhasil",
          style: TextStyle(
            fontSize: getPropotionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
              // text: "Halaman Utama",
              // press: () => Navigator.pushNamed(context, HomeScreen.routeName)),
              text: "Tambah Gambar",
              press: () =>
                  Navigator.pushNamed(context, AddPictScreen.routeName)),
        ),
        Spacer(),
      ],
    );
  }
}
