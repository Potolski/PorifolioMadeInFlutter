import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/videos.dart';
import '../services/yt_api.dart';
import './youtubeplayer.dart';

class Youtube extends StatefulWidget {
  @override
  _Youtube createState() => _Youtube();
}

class _Youtube extends State<Youtube> {
  List<Video> _videos;

  @override
  void initState() {
    super.initState();
    _initVideos();
  }

  _initVideos() async {
    List<Video> videos = await APIService.instance
        .getVideo("PLRAakQEiXFeMVPXsZozMoU6RKvV4wz3EF");
    setState(() {
      _videos = videos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _videos != null
        ? Container(
            color: Colors.black26,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: Text("DvD", style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.black26,
                  iconTheme: IconThemeData(color: Colors.yellow),
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
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      childAspectRatio: 1.4,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        Video video = _videos[index];
                        return GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => VideoScreen(id: video.id),
                            ),
                          ),
                          child: Card(
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                        image: NetworkImage(
                                          video.thumbnailUrl,
                                        ),
                                        alignment: FractionalOffset.center,
                                        fit: BoxFit.fitWidth),
                                  ),
                                ),
                                Container(
                                  height: 49,
                                  color: Colors.black,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      video.title,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                              ])),
                        );
                      },
                      childCount: _videos.length,
                    )),
              ],
            ))
        : Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.yellow, // Red
              ),
            ),
          );
  }
}
