import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({super.key});

  double width = Get.width;
  double height = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    body: Container(
        foregroundDecoration: BoxDecoration(
        backgroundBlendMode: BlendMode.colorBurn,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blueGrey.shade900,
            Colors.indigo.shade900,
            Colors.deepPurple.shade900,
            Colors.purple.shade900,
            Colors.deepPurple.shade900,
            Colors.indigo.shade900,
            Colors.blueGrey.shade900
          ],
        ),
      ),


    child: Container(
      alignment: Alignment.bottomRight,
      color: Colors.black,
      height: height,
      width: width,
      child: Image.asset("assets/images/Get Started.jpg"),

    ),
    ));
  }
}
