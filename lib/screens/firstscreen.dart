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
            child: Text("Wake",
                style: TextStyle(color: Colors.yellow, fontSize: 60))),
      ),
      onTap: () {
        Navigator.pushReplacementNamed(context, "/mainscreen");
      },
    ));
  }
}
