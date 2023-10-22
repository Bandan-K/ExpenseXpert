import 'package:expensexpert/Operations/get_users.dart';
import 'package:expensexpert/Operations/update_users.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'Screens/authentication_screen.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

Future main() async {
  // Enable the Email/Password authentication
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // FireBase UI-Auth
  // FirebaseUIAuth.configureProviders([
  //   EmailAuthProvider(),
  // ]);
  // Login with Google
  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
    GoogleProvider(clientId: '1:54532140724:android:949a2933f801cde48071e1'),
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: AuthenticationScreen(),
      // Testing purpose
      // home: AddUser("Bandan", "RKU", 20),
      // home: GetUserName("2Gun4KklOwE3MMJWF3DY"),
    );
  }
}
