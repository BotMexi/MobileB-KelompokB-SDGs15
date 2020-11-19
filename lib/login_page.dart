import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spidylib/component/text-widget.dart';
import 'package:spidylib/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Container(
              child: TextWidget(
                isi: "Id",
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    // border: ,
                    // border: InputBorder.none,
                    hintText: 'id'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextWidget(isi: "password",),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    // border: ,
                    // border: InputBorder.none,
                    hintText: 'password'),
              ),             
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                //next page
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              child: Text("Login"),
            ),
            Container(
              width: 100,
              height: 300,
              child: SvgPicture.asset('assets/icons/spider.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
