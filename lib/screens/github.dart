import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class GithubScreen extends StatefulWidget {
  @override
  _GithubScreenState createState() => _GithubScreenState();
}

class _GithubScreenState extends State<GithubScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Color.fromRGBO(36, 41, 46, 0.96),
          )),
      body: WebView(
        initialUrl: "https://github.com/Potolski",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
