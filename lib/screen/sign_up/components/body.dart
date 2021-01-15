import 'package:flutter/material.dart';
import 'package:spidylib/components/custom_suffix_icon.dart';
import 'package:spidylib/components/default_button.dart';
import 'package:spidylib/components/form_error.dart';
import 'package:spidylib/components/social_card.dart';
import 'package:spidylib/constants.dart';
import 'package:spidylib/screen/sign_up/components/sign_up_form.dart';
import 'package:spidylib/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getPropotionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text(
                "Daftarkan Akun",
                style: headingStyle,
              ),
              Text(
                "Lengkapi data berikut untuk dapat \nmendaftarkan akun",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
