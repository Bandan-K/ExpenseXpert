import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../unImportantFiles/login.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return customizedSignInScreen();
          }
          return const LoginScreen();
        }
    );
  }

  Widget customizedSignInScreen() {
    return SignInScreen(
      headerBuilder: (context, constraints, shrinkOffset) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset('assets/images/rr.png'),
        );
      },
      subtitleBuilder: (context, action) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Text(
            action == AuthAction.signIn ?
            'ExpenseXpert 📉📈' :
            'Welcome to ExpenseXpert',
            style: TextStyle(
              fontSize: 30,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 2
                ..color = Colors.purple,
            ),
          ),
        );
      },
      footerBuilder: (context, _) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 32),
          child: Text('All rights reserved\nExpenseXpert™ ©️'),
        );
      },
    );
  }
}