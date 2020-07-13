import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      child: Container(
        color: Colors.black,
        child: Center(
            child: Text("Dalson",
                style: TextStyle(color: Colors.red, fontSize: 60))),
      ),
      onTap: () {
        Navigator.pushReplacementNamed(context, "/mainpage");
      },
    ));
  }
}
