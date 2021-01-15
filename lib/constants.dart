import 'package:flutter/material.dart';
import 'package:spidylib/size_config.dart';

const kPrimaryColor = Color(0xFF2A7E2E);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF7ECF79), Color(0xFF677500)],
);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Anda belum memasukkan email";
const String kInvalidEmailError = "Alamat email tidak valid";
const String kPassNullError = "Anda belum memasukkan password";
const String kShortPassError = "Password terlalu pendek";
const String kMatchPassError = "Password salah";
const String kNameNullError = "Anda belum mengisi nama";
// const String kInstansiNullError = "Anda belum mengisi instansi";
const String kAddressNullError = "Anda belum mengisi alamat";

final headingStyle = TextStyle(
  fontSize: getPropotionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(5, 5),
  blurRadius: 10,
  color: Color(0xFFE9E9E9).withOpacity(0.56),
);

const defaultDuration = Duration(milliseconds: 250);

// final otpInputDecoration = InputDecoration(
//   contentPadding:
//       EdgeInsets.symmetric(vertical: getPropotionateScreenWidth(15)),
//   border: outlineInputBorder(),
//   focusedBorder: outlineInputBorder(),
//   enabledBorder: outlineInputBorder(),
// );

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getPropotionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
