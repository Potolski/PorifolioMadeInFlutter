import 'package:flutter/material.dart';
import 'firstpage.dart';

class Login extends StatelessWidget {
  final TextStyle fieldsStyle = TextStyle(color: Colors.grey[50]);
  final OutlineInputBorder fieldsborder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(32),
      borderSide: BorderSide(color: Colors.grey[50], width: 0.0));

  @override
  Widget build(BuildContext context) {
    final usernamefield = TextField(
      obscureText: false,
      style: fieldsStyle,
      decoration: InputDecoration(
          hintText: "Username",
          hintStyle: fieldsStyle,
          hoverColor: Colors.red,
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          enabledBorder: fieldsborder,
          border: fieldsborder),
    );
    final passwordfield = TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password",
          hintStyle: fieldsStyle,
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          enabledBorder: fieldsborder,
          border: fieldsborder),
    );

    final loginbutton = Material(
      color: Colors.red,
      elevation: 5,
      borderRadius: BorderRadius.circular(32),
      child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: Text("Valson",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FirstPage()));
          }),
    );

    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.black,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Salson", style: TextStyle(color: Colors.red, fontSize: 60)),
              SizedBox(height: 45),
              usernamefield,
              SizedBox(height: 25),
              passwordfield,
              SizedBox(height: 25),
              loginbutton,
            ],
          ),
        )),
      ),
    ));
  }
}
