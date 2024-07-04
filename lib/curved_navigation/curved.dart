import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:homehub/navigation_page/controlling_monetring.dart';
import 'package:homehub/navigation_page/user_list.dart';
import 'package:homehub/navigation_page/voice_control.dart';

import '../navigation_page/home_screen.dart';
import '../navigation_page/settings.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;

  final item = [
    HomeScreen(),
    ActivityList(),
    VoiceControll(),
    ControllingAndMonetring(),
    Setting()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.blue,
        color: Colors.black,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const Icon(
            Icons.home,
            color: Colors.white,
          ),
          const Icon(
            Icons.star,
            color: Colors.white,
          ),
          const Icon(
            Icons.mic,
            color: Colors.white,
          ),
          const Icon(
            Icons.alarm_sharp,
            color: Colors.white,
          ),
          const Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {});
          currentIndex = index;
        },
      ),
      body: item[currentIndex],
    );
  }
}
