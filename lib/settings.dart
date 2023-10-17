import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category.dart';
import 'export_page.dart';
import 'transactions_page.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool positive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  child: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    "assets/images/icons8-male-user-50 (black).png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Captain Roger",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    "rah***23@gmail.com",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ]),
                // ElevatedButton(onPressed: () {} , child: Icon(Icons.arrow_forward_ios,color: Colors.white,))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                ElevatedButton(style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    )),
                    onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TransactionsPage()), // Navigate to SecondPage
                  );
                }, child: Icon(Icons.arrow_forward_ios))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Theme",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                AnimatedToggleSwitch<bool>.dual(
                  current: positive,
                  first: false,
                  second: true,
                  spacing: 45.0,
                  style: const ToggleStyle(
                    borderColor: Colors.transparent,
                    backgroundColor: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.deepPurple,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0.5),
                      ),
                    ],
                  ),
                  borderWidth: 5.0,
                  height: 50,
                  loadingIconBuilder: (context, global) =>
                  const CupertinoActivityIndicator(color: Colors.white),
                  onChanged: (b) {
                    setState(() => positive = b);
                    return Future<dynamic>.delayed(Duration(seconds: 1));
                  },
                  styleBuilder: (b) => ToggleStyle(
                      indicatorColor: b ? Colors.deepPurple.shade900 : Colors.deepPurple.shade900),

                  textBuilder: (value) => value
                      ? Center(
                      child: Image.asset("assets/images/icons8-moon-64.png")
                  )
                      : Center(child: Image.asset("assets/images/icons8-accuweather-64.png")),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Export",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                ElevatedButton(style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ExportPage()), // Navigate to SecondPage
                      );
                    }, child: Icon(Icons.arrow_forward_ios))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add Category",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                ElevatedButton(style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CategoryPage()), // Navigate to SecondPage
                      );
                    }, child: Icon(Icons.arrow_forward_ios))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Logout  ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                ElevatedButton(style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    )),
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                    }, child:
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                    ))

              ],
            )
          ],
        ),
      ),
    );
  }
}
