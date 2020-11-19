import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new ExampleWidget()));
}

class ExampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget bigCircle = new Container(
      width: 300.0,
      height: 300.0,
      decoration: new BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
    );

    return new Material(
      color: Colors.black,
      child: new Center(
        child: new Stack(
          children: <Widget>[
            bigCircle,
            new Positioned(
              child: new CircleButton(onTap: () => print("Cool"), iconData: Icons.favorite_border),
              top: 10.0,
              left: 130.0,
            ),
            new Positioned(
              child: new CircleButton(onTap: () => print("Cool"), iconData: Icons.timer),
              top: 120.0,
              left: 10.0,
            ),
            new Positioned(
              child: new CircleButton(onTap: () => print("Cool"), iconData: Icons.place),
              top: 120.0,
              right: 10.0,
            ),
            new Positioned(
              child: new CircleButton(onTap: () => print("Cool"), iconData: Icons.local_pizza),
              top: 240.0,
              left: 130.0,
            ),
            new Positioned(
              child: new CircleButton(onTap: () => print("Cool"), iconData: Icons.satellite),
              top: 120.0,
              left: 130.0,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;

  const CircleButton({Key key, this.onTap, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 50.0;

    return new InkResponse(
      onTap: onTap,
      child: new Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: new Icon(
          iconData,
          color: Colors.black,
        ),
      ),
    );
  }
}