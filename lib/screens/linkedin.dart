import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LinkedInScreen extends StatefulWidget {
  @override
  _LinkedInScreenState createState() => _LinkedInScreenState();
}

class _LinkedInScreenState extends State<LinkedInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Color.fromRGBO(36, 41, 46, 0.96),
          )),
      body: WebView(
        initialUrl: "https://www.linkedin.com/in/davidpotolskilafeta",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
