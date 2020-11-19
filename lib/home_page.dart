import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spidylib/second_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SpidyLib"),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    // margin: EdgeInsets.all(100.0),
                    child: SvgPicture.asset('assets/icons/spider.svg'),
                    decoration: BoxDecoration(
                        // color: Colors.lightBlue,
                        shape: BoxShape.circle),
                  ),
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    // margin: EdgeInsets.all(100.0),
                    child: SvgPicture.asset('assets/icons/spider.svg'),
                    decoration: BoxDecoration(
                        // color: Colors.lightBlue,
                        shape: BoxShape.circle),
                  ),
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    // margin: EdgeInsets.all(100.0),
                    child: SvgPicture.asset('assets/icons/spider.svg'),
                    decoration: BoxDecoration(
                        // color: Colors.lightBlue,
                        shape: BoxShape.circle),
                  ),
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    // margin: EdgeInsets.all(100.0),
                    child: SvgPicture.asset('assets/icons/spider.svg'),
                    decoration: BoxDecoration(
                        // color: Colors.lightBlue,
                        shape: BoxShape.circle),
                  ),
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    // margin: EdgeInsets.all(100.0),
                    child: SvgPicture.asset('assets/icons/spider.svg'),
                    decoration: BoxDecoration(
                        // color: Colors.lightBlue,
                        shape: BoxShape.circle),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
