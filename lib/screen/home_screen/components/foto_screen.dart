import 'package:flutter/material.dart';

class FotoScreen extends StatelessWidget {
  static String routeName = "/foto";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Kamera(),
    );
  }
}

class Kamera extends StatefulWidget {
  @override
  _KameraState createState() => _KameraState();
}

class _KameraState extends State<Kamera> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
