import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:expensexpert/Screens/add_transactions.dart';
import 'package:flutter/material.dart';
import '../analytics.dart';
import '../homepage.dart';
import '../Screens/profile_page.dart';
import '../settings.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currIndex = 0;
  List pages = [HomePage(),AnalyticsPage(),ProfileScreen(),SettingsScreen()];
  final iconList = <IconData>[
    Icons.home,
    Icons.analytics,
    Icons.person_2_rounded,
    Icons.settings,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTransaction()), // Navigate to SecondPage
          );
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: currIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => currIndex = index),
        //other params
      ),
    );
  }
}
