import 'package:flutter/material.dart';
import 'firstpage.dart';
import 'mainpage.dart';
import 'login.dart';

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
          "/mainpage": (context) => MainPage(),
          "/login": (context) => Login(),
          "/firstpage": (context) => FirstPage(),
        });
  }
}
