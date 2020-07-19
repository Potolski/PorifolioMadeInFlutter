import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:teste/screens/youtubevideos.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  final List<Widget> _children = [
    Youtube(),
    Container(color: Colors.red),
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
                Icons.home,
              ),
              title: Text("Home", style: TextStyle(color: Colors.grey[700]))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
              ),
              title:
                  Text("Explore", style: TextStyle(color: Colors.grey[700]))),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
            ),
            title: Text("Youtube", style: TextStyle(color: Colors.grey[700])),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
              ),
              title: Text("Inbox", style: TextStyle(color: Colors.grey[700]))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library,
              ),
              title:
                  Text("Library", style: TextStyle(color: Colors.grey[700]))),
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
