import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MediumScreen extends StatefulWidget {
  @override
  _MediumScreenState createState() => _MediumScreenState();
}

class _MediumScreenState extends State<MediumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Color.fromRGBO(36, 41, 46, 0.96),
          )),
      body: WebView(
        initialUrl: "https://medium.com/@davidpotolskilafeta",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
