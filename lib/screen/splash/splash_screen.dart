import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:spidylib/screen/login/login-page.dart';
import 'dart:async';

import 'package:spidylib/screen/splash/components/body.dart';
import 'package:spidylib/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

// class WelcomePage extends StatefulWidget {
//   @override
//   _WelcomePageState createState() => _WelcomePageState();
// }

// class _WelcomePageState extends State<WelcomePage> {
//   start() async {
//     var duration = Duration(seconds: 5);
//     return Timer(duration, () {
//       // if (token==null){
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => LoginPage()));
//     });
//   }

//   @override
//   void initState() {
//     start();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//             height: size.height,
//             width: size.width,
//             decoration: BoxDecoration(color: Colors.blue),
//             child: Column(
//               children: <Widget>[
//                 SizedBox(
//                   height: 100,
//                 ),
//                 Text(
//                   "Welcome !",
//                   style: TextStyle(fontSize: 35, color: Colors.white),
//                 ),
//                 SizedBox(
//                   height: 100,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 300,
//                   child: SvgPicture.asset('assets/icons/spider.svg'),
//                 ),
//                 // RaisedButton(
//                 //   shape: RoundedRectangleBorder(
//                 //       borderRadius: BorderRadius.circular(10)),
//                 //   onPressed: () {
//                 //     //next page
//                 //     Navigator.pushReplacement(context,
//                 //         MaterialPageRoute(builder: (context) {
//                 //       return LoginPage();
//                 //     }));
//                 //   },
//                 //   child: Text("Get Started"),
//                 // ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
