import 'package:teste/utils/keys.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import 'package:teste/models/videos.dart';

class APIService {
  APIService._instantiate();
  //singleton
  static final APIService instance = APIService._instantiate();

  // google api base url
  final String _baseUrl = 'www.googleapis.com';
  String _nextPageToken = '';

  // creates a list of videos from the API requests
  Future<List<Video>> getVideo(String playlistId) async {
    // creates the paramenters we will need to add on the API call
    Map<String, String> parameters = {
      'part': 'snippet',
      'playlistId': playlistId,
      'maxResults': '10',
      'pageToken': _nextPageToken,
      'key': YT_API_KEY,
    };

    // Creates the full call
    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/playlistItems',
      parameters,
    );

    // creates the headers for the http request
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var response = await http.get(uri, headers: headers);
    // status 200 means OK
    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      _nextPageToken = data['nextPageToken'] ?? '';
      List<dynamic> videosJson = data['items'];

      // Fetch first eight videos from uploads playlist
      List<Video> videos = [];
      videosJson.forEach(
        (json) => videos.add(
          Video.fromMap(json['snippet']),
        ),
      );
      return videos;
    } else {
      throw json.decode(response.body)['error']['message'];
    }
  }
}
