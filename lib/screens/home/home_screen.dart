import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../profile/profile_screen.dart';
import 'components/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String idScreen = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? _pickedImage;
  final ImagePicker _imagePicker = ImagePicker();
  int ind = 0;
  void _pickImage() async {
    final pickedImageFile = await _imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _pickedImage = File(pickedImageFile!.path);
      ind++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if(_pickedImage != null)
            Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image:  DecorationImage(image: FileImage(_pickedImage!)),
            ),
          ),
          _body(context),
        ],
      )
    );
  }

  _body(context) {
    return ListView(
      children: <Widget>[
        ...header(context, "Home"),
        Text("$ind"),
        Container(
          height: 350,
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, ProfileScreen.idScreen);
            },
            child: const Text("To Profile!"),
          ),
        ),
        Container(
          height: 20,
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _pickImage,
            child: const Text("Change Background Image"),
          ),
        ),
      ],
    );
  }
}
