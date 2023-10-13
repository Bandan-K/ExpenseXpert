import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../analytics.dart';
import '../homepage.dart';
import '../profile_page.dart';
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
    Icons.analytics_outlined,
    Icons.person_2_rounded,
    Icons.settings,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: currIndex,
        gapWidth: 4.0,
        backgroundColor: Colors.grey.shade700,
        onTap: (index) => setState(() => currIndex = index),
        //other params
      ),
    );

  }
}
