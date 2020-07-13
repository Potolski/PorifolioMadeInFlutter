import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/youtube.dart';
import 'screens/firstpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.purple),
        home: FirstPage(),
        routes: {
          "/mainpage": (context) => Youtube(),
          "/login": (context) => Login(),
          "/firstpage": (context) => FirstPage(),
        });
  }
}
