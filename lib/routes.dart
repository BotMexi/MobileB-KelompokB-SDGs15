// import 'dart:js';
//! Beda material.dart sama widget.dart apa?
// import 'package:flutter/widgets.dart';

import 'package:flutter/widgets.dart';
import 'package:spidylib/screen/add_pict/add_pict_screen.dart';
import 'package:spidylib/screen/complete_profile/complete_profile_screen.dart';
import 'package:spidylib/screen/forgot_password/forgot_password_screen.dart';
import 'package:spidylib/screen/home_screen/home_screen.dart';
import 'package:spidylib/screen/login_success/login_success_screen.dart';
import 'package:spidylib/screen/sign_in/sign_in_screen.dart';
import 'package:spidylib/screen/sign_up/sign_up_screen.dart';
import 'package:spidylib/screen/splash/splash_screen.dart';

// import 'package:spidylib/screen/login/login-page.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  AddPictScreen.routeName: (context) => AddPictScreen(),
};

// final Map<String, WidgetBuilder> routes = {
//   LoginPage.routeName: (context) => LoginPage(),
// };
