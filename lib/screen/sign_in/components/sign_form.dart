import 'package:flutter/material.dart';
import 'package:spidylib/components/custom_suffix_icon.dart';
import 'package:spidylib/components/default_button.dart';
import 'package:spidylib/components/form_error.dart';
import 'package:spidylib/screen/forgot_password/forgot_password_screen.dart';
import 'package:spidylib/screen/login_success/login_success_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getPropotionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getPropotionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getPropotionateScreenHeight(20)),
          DefaultButton(
            text: "Login",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          //TODO: cari tau alasan return ""
          //? TEL ME WHYYY???
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Kata Sandi",
        hintText: "Masukkan kata sandi anda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //? icon di dalem text field
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Alamat Email",
        hintText: "Masukkan email anda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //? icon di dalem text field
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}

// TextFormField buildPasswordFormField() {
//     return TextFormField(
//       obscureText: true,
//       onSaved: (newValue) => password = newValue,
//       onChanged: (value) {
//         if (value.isNotEmpty && errors.contains(kPassNullError)) {
//           setState(() {
//             errors.remove(kPassNullError);
//           });
//         } else if (value.length >= 8 && errors.contains(kShortPassError)) {
//           setState(() {
//             errors.remove(kShortPassError);
//           });
//         }
//         return null;
//       },
//       validator: (value) {
//         if (value.isEmpty && !errors.contains(kPassNullError)) {
//           setState(() {
//             errors.add(kPassNullError);
//           });
//           return "";
//         } else if (value.length < 8 && !errors.contains(kShortPassError)) {
//           setState(() {
//             errors.add(kShortPassError);
//           });
//           return "";
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         labelText: "Kata Sandi",
//         hintText: "Masukkan kata sandi anda",
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         //? icon di dalem text field
//         suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
//       ),
//     );
//   }

//   TextFormField buildEmailFormField() {
//     return TextFormField(
//       keyboardType: TextInputType.emailAddress,
//       onSaved: (newValue) => email = newValue,
//       onChanged: (value) {
//         if (value.isNotEmpty && errors.contains(kEmailNullError)) {
//           setState(() {
//             errors.remove(kEmailNullError);
//           });
//           return "";
//         } else if (emailValidatorRegExp.hasMatch(value) &&
//             errors.contains(kInvalidEmailError)) {
//           setState(() {
//             errors.remove(kInvalidEmailError);
//           });
//           return "";
//         }
//         return null;
//       },
//       validator: (value) {
//         if (value.isEmpty && !errors.contains(kEmailNullError)) {
//           setState(() {
//             errors.add(kEmailNullError);
//           });
//         } else if (!emailValidatorRegExp.hasMatch(value) &&
//             !errors.contains(kInvalidEmailError)) {
//           setState(() {
//             errors.add(kInvalidEmailError);
//           });
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         labelText: "Alamat Email",
//         hintText: "Masukkan email anda",
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         //? icon di dalem text field
//         suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
//       ),
//     );
//   }
// }
