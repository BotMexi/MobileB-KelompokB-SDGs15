// import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "",
            style: TextStyle(
              fontSize: getPropotionateScreenWidth(16),
              color: Colors.black,
            ),
          ),
        ),
        UseCamera(),
      ],
    );
  }
}

class UseCamera extends StatefulWidget {
  @override
  _UseCameraState createState() => _UseCameraState();
}

class _UseCameraState extends State<UseCamera> {
  File _image;

  final imagePicker = ImagePicker();
  Future getImage() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image.path);
    });
  }

  // Future getImage() async {
  //   final image = await ImagePicker.pickImage(source: ImageSource.camera);

  //   setState(() {
  //     _image = image;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: _image == null
                ? Text("Tidak ada gambar yang dipilih")
                : Image.file(_image)),
        // Spacer(),
        FloatingActionButton(
          onPressed: getImage,
          child: Icon(Icons.camera_alt),
        )
      ],
    );
  }
}
