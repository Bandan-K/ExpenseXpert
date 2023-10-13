import 'package:expensexpert/Screens/LoginPage.dart';
import 'package:expensexpert/category.dart';
import 'package:expensexpert/homepage.dart';
import 'package:expensexpert/main_page.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return const SignInScreen();
          }
          return HomePage();
        }
    );
  }
}
