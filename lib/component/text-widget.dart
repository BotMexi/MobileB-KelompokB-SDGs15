import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String isi;
  final Color warna;
  TextWidget({this.isi, this.warna});
  @override
  Widget build(BuildContext context) {
    return Text(
      "${isi}",
      style: TextStyle(color: warna),
    );
  }
}
