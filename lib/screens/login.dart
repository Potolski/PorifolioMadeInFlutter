import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextStyle fieldsStyle = TextStyle(color: Colors.grey[50]);

  final _formKey = GlobalKey<FormState>();

  String _username;
  String _password;

  final OutlineInputBorder fieldsborder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(32),
      borderSide: BorderSide(color: Colors.grey[50], width: 0.0));

  fieldsdecoration(String hinttext) {
    return InputDecoration(
        hintText: hinttext,
        hintStyle: fieldsStyle,
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        enabledBorder: fieldsborder,
        border: fieldsborder);
  }

  void validateAndSave(_username, _password) {
    final FormState form = _formKey.currentState;
    form.save();
    if (form.validate() && _username == "123" && _password == "302") {
      print('Form is valid');
      Navigator.pushReplacementNamed(context, "/mainscreen");
    } else {
      print('Form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    final usernamefield = TextFormField(
      obscureText: false,
      style: fieldsStyle,
      validator: (value) => value.isEmpty ? 'Username can\'t be empty' : null,
      onSaved: (value) => _username = value.trim(),
      decoration: fieldsdecoration("Username"),
    );
    final passwordfield = TextFormField(
      obscureText: true,
      style: fieldsStyle,
      validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
      onSaved: (value) => _password = value.trim(),
      decoration: fieldsdecoration("Password"),
    );

    final loginbutton = MaterialButton(
        color: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        elevation: 5,
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Text("Valson",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        onPressed: () {
          validateAndSave(_username, _password);
        });

    return Scaffold(
      body: Form(
          key: _formKey,
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Salson",
                      style: TextStyle(color: Colors.red, fontSize: 60)),
                  SizedBox(height: 45),
                  usernamefield,
                  SizedBox(height: 25),
                  passwordfield,
                  SizedBox(height: 25),
                  loginbutton,
                ],
              ),
            ),
          )),
    );
  }
}
