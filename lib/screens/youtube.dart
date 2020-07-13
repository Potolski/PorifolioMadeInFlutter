import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Youtube extends StatefulWidget {
  @override
  _Youtube createState() => _Youtube();
}

class _Youtube extends State<Youtube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black26,
        bottomNavigationBar: BottomBar(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("Cralson", style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.black26,
              iconTheme: IconThemeData(color: Colors.grey[700]),
              actions: [
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                )
              ],
            ),
            SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  mainAxisSpacing: 70,
                  crossAxisSpacing: 30,
                  childAspectRatio: 1.7,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                        alignment: Alignment.center,
                        color: Colors.grey[700],
                        child: Text("Video $index"));
                  },
                  childCount: 20,
                )),
          ],
        ));
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black26,
      selectedItemColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey[700],
            ),
            title: Text("Home", style: TextStyle(color: Colors.grey[700]))),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.grey[700],
            ),
            title: Text("Explore", style: TextStyle(color: Colors.grey[700]))),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
              color: Colors.grey[700],
            ),
            title: Text("Subscriptions",
                style: TextStyle(
                    color: Colors.grey[700], fontSize: 11, height: 1.4))),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: Colors.grey[700],
            ),
            title: Text("Inbox", style: TextStyle(color: Colors.grey[700]))),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library,
              color: Colors.grey[700],
            ),
            title: Text("Library", style: TextStyle(color: Colors.grey[700]))),
      ],
    );
  }
}
