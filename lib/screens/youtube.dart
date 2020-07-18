import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:teste/models/videos.dart';
import 'package:teste/services/yt_api.dart';

class Youtube extends StatefulWidget {
  @override
  _Youtube createState() => _Youtube();
}

class _Youtube extends State<Youtube> {
  List<Video> _videos;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _initVideos();
  }

  _initVideos() async {
    _loading = true;
    List<Video> videos = await APIService.instance
        .getVideo("PLRAakQEiXFeMVPXsZozMoU6RKvV4wz3EF");
    setState(() {
      _videos = videos;
    });
    _loading = false;
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
                      mainAxisSpacing: 70,
                      crossAxisSpacing: 30,
                      childAspectRatio: 1.7,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        Video video = _videos[index];
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.grey[700],
                          child: Image(
                            image: NetworkImage(video.thumbnailUrl),
                          ),
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
