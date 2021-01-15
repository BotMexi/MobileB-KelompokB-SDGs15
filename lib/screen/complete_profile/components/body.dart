import 'package:flutter/material.dart';
import 'package:spidylib/components/custom_suffix_icon.dart';
import 'package:spidylib/components/default_button.dart';
import 'package:spidylib/components/form_error.dart';
import 'package:spidylib/screen/complete_profile/components/complete_profile_form.dart';
import 'package:spidylib/size_config.dart';

import '../../../constants.dart';

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
                "Lengkapi Profile",
                style: headingStyle,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text(
                "lengkapi detail data profile anda",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: getPropotionateScreenHeight(30),
              ),
              //TODO: masukin icon
            ],
          ),
        ),
      ),
    );
  }
}
