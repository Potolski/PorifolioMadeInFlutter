import 'videos.dart';

class Channel {
  final String id;
  final String title;
  final String profilePictureUrl;
  final String videoCount;
  final String uploadPlaylistId;
  List<Video> videos;

  Channel({
    this.id,
    this.title,
    this.profilePictureUrl,
    this.videoCount,
    this.uploadPlaylistId,
    this.videos,
  });

  factory Channel.fromMap(Map<String, dynamic> map) => Channel(
        id: map['id'],
        title: map['snippet']['title'],
        profilePictureUrl: map['snippet']['thumbnails']['default']['url'],
        videoCount: map['statistics']['videoCount'],
        uploadPlaylistId: map['contentDetails']['relatedPlaylists']['uploads'],
      );
}
