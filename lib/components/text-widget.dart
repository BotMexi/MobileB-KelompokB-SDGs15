import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String isi;
  final Color warna;
  final double ukuran;
  TextWidget({this.isi, this.warna, this.ukuran});
  @override
  Widget build(BuildContext context) {
    return Text(
      "${isi}",
      style: TextStyle(color: warna, fontSize: ukuran,),
    );
  }
}
