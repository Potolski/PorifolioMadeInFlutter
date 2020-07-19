import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/screencontroler.dart';
import 'screens/firstscreen.dart';

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
          "/mainscreen": (context) => MainScreen(),
          "/login": (context) => Login(),
          "/firstpage": (context) => FirstPage(),
        });
  }
}
