import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:teste/screens/github.dart';
import 'package:teste/screens/linkedin.dart';
import 'package:teste/screens/medium.dart';
import 'package:teste/screens/youtubevideos.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  final List<Widget> _children = [
    Container(color: Colors.red),
    LinkedInScreen(),
    GithubScreen(),
    MediumScreen(),
    Youtube(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black26,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: Colors.yellow),
        unselectedItemColor: Colors.grey[700],
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                FlutterIcons.ios_person_ion,
              ),
              title:
                  Text("About me", style: TextStyle(color: Colors.grey[700]))),
          BottomNavigationBarItem(
            icon: Icon(
              FlutterIcons.linkedin_square_ant,
            ),
            title: Text("LinkedIn", style: TextStyle(color: Colors.grey[700])),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                FlutterIcons.github_ant,
              ),
              title: Text("Github", style: TextStyle(color: Colors.grey[700]))),
          BottomNavigationBarItem(
              icon: Icon(
                FlutterIcons.medium_monogram_ant,
              ),
              title: Text("Medium", style: TextStyle(color: Colors.grey[700]))),
          BottomNavigationBarItem(
              icon: Icon(
                FlutterIcons.youtube_ant,
              ),
              title:
                  Text("Youtube", style: TextStyle(color: Colors.grey[700]))),
        ],
      ),
      body: _children[_currentIndex],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
