import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spidylib/constants.dart';
import 'package:spidylib/gajah.dart';
import 'package:spidylib/size_config.dart';

import '../../../api.dart';

final List<String> imgList = ['banner1.png', 'banner2.png', 'banner3.png'];
final APIService apiService = APIService();
Map<String, String> yowisiki = new HashMap();

class PantauSection extends StatefulWidget {
  PantauSection({Key key}) : super(key: key);

  @override
  _PantauSection createState() => _PantauSection();
}

class _PantauSection extends State<PantauSection> {
  @override
  Widget build(BuildContext context) {
    return _duar(yowisiki);
    return Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[_duar(yowisiki)]));
  }
}

Widget _duar(Map<String, String> ikilo) {
  if (ikilo.length <= 0) {
    return Center(
      child: Text("Ada Yang Salah!!!"),
    );
  } else if (ikilo.length > 0) {
    return _buildListView(ikilo);
  } else {
    return Center(child: LinearProgressIndicator());
  }
}

Widget _buildListView(Map<String, String> ayam) {
  print(ayam.length);
  return Column(
    children: [
      ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: ayam.length,
          itemBuilder: (context, index) {
            List values = ayam.values.toList();
            List keys = ayam.keys.toList();
            if (index == 0) {
              return Image.network(
                "${values[index]}",
                height: 200,
              );
            }
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "${keys[index]} : ${values[index]}".toUpperCase(),
                  ),
                ]);
          }),
    ],
  );
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: [
              Container(
                child: Image.asset(
                  "assets/images/closeup-selective-focus-shot-spider-web-middle-forest.jpg",
                  height: getPropotionateScreenHeight(315),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getPropotionateScreenHeight(80)),
                  Text(
                    "SpidyLib",
                    style: TextStyle(
                        fontSize: getPropotionateScreenWidth(73),
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Positioned(
                bottom: getPropotionateScreenWidth(-25),
                child: Container(
                  height: getPropotionateScreenHeight(50),
                  width: getPropotionateScreenWidth(315),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.black),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.05),
        Text(
          "Jenis Laba- laba",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Container(
        //   height: SizeConfig.screenHeight * 0.4,
        //   padding: EdgeInsets.all(16.0),
        //   child: ListView.builder(
        //     physics: ClampingScrollPhysics(),
        //     shrinkWrap: true,
        //     scrollDirection: Axis.horizontal,
        //     itemCount: 15,
        //     itemBuilder: (BuildContext context, int index) => Card(
        //       child: Container(
        //         width: SizeConfig.screenWidth * 0.8,
        //         height: 320,
        //         margin: EdgeInsets.only(left: 20, right: 20),
        //         child: Column(
        //           children: [
        //             Image.asset(
        //                 "assets/images/Meat_eater_ant_feeding_on_honey02.jpg"),
        //             Row(
        //               children: [
        //                 Container(
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text("Nama"),
        //                       Text("Spesies"),
        //                       Text("Spesies"),
        //                       Text("Spesies"),
        //                     ],
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        Container(
            height: SizeConfig.screenHeight * 0.55,
            padding: EdgeInsets.all(16.0),
            child: SafeArea(
                child: FutureBuilder(
                    future: apiService.fetchGajah(),
                    builder: (BuildContext context,
                        AsyncSnapshot<List<Gajah>> snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                              "ada Yang Salah!!!: ${snapshot.error.toString()}"),
                        );
                      } else if (snapshot.hasData == true) {
                        List<Gajah> gajah = snapshot.data;
                        // for (int i = 0; i < 2; i++) {
                        yowisiki = {
                          "image": gajah[2].image,
                          "name": gajah[2].name,
                          "species": gajah[2].species,
                          "wikilink": gajah[2].wikilink
                        };
                        //   print('yowisiki ${yowisiki.values}');
                        // }
                        print('gajah ${gajah[0].name}');

                        return ListView.builder(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) =>
                              Card(
                            child: Container(
                                width: SizeConfig.screenWidth * 0.8,
                                margin: EdgeInsets.only(left: 20, right: 20),
                                child: PantauSection()),
                            // child: PantauSection()),
                          ),
                        );
                        // PantauSection();
                      } else {
                        return Center(child: LinearProgressIndicator());
                      }
                    }))),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       Container(
        //         width: SizeConfig.screenWidth * 0.8,
        //         height: 320,
        //         margin: EdgeInsets.only(left: 20, right: 20),
        //         child: Column(
        //           children: [
        //             Image.asset(
        //                 "assets/images/Meat_eater_ant_feeding_on_honey02.jpg"),
        //             Row(
        //               children: [
        //                 Container(
        //                   // padding: EdgeInsets.all(40 / 2),
        //                   // decoration: BoxDecoration(
        //                   // color: Colors.white,
        //                   // boxShadow: [
        //                   //   BoxShadow(
        //                   //     offset: Offset(0, 10),
        //                   //     blurRadius: 50,
        //                   //     color: kPrimaryColor.withOpacity(0.23),
        //                   //   ),
        //                   // ],
        //                   // ),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text("Nama"),
        //                       Text("Spesies"),
        //                     ],
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //         // decoration: BoxDecoration(
        //         //   borderRadius: BorderRadius.circular(10),
        //         //   image: DecorationImage(),
        //         // ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    ));
  }
}
