import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final con = FlipCardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: FlipCard(
          rotateSide: RotateSide.right,
          onTapFlipping: true,
          axis: FlipAxis.vertical,
          controller: con,
          frontWidget: Container(
            foregroundDecoration: BoxDecoration(
              backgroundBlendMode: BlendMode.overlay,
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
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/login_logo.png",
                        fit: BoxFit.fitHeight),
                  ],
                ),
              ),
            ),
          ),
          backWidget: Container(
            foregroundDecoration: BoxDecoration(
              backgroundBlendMode: BlendMode.overlay,
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
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/login_logo-modified.png",
                        fit: BoxFit.fitHeight),
                    const Text(
                      "Log In",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
