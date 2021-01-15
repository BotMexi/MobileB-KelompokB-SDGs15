import 'package:flutter/material.dart';
import 'package:spidylib/screen/add_pict/components/body.dart';

class AddPictScreen extends StatelessWidget {
  static String routeName = "/add_pict";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah gambar"),
      ),
      body: Body(),
    );
  }
}
