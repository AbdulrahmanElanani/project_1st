import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_1st/model/programming_course.dart';
import 'package:project_1st/screens/video.dart';

class CourseVideos extends StatefulWidget {
  const CourseVideos({super.key, required this.programmingCourse});

  final ProgrammingCourse programmingCourse;

  @override
  _CourseVideosState createState() => _CourseVideosState();
}

class _CourseVideosState extends State<CourseVideos> {
  final String apiKey =
      'AIzaSyA8itJq6qOHWdchrDkhOMI21UExsLX0Gio'; // Replace with your YouTube API key
  // final String playlistId = widget.programmingCourse.link; // Playlist ID
  List<String> videoUrls = [];
  List<String> videoIds = [];
  List<String> videoTitless = [];
  List<String> videoDescriptions = [];
  List<bool> isCompleted = [];

  @override
  void initState() {
    super.initState();
    fetchYouTubePlaylistVideos();
  }

  String extractPlaylistId(String url) {
    final Uri uri = Uri.parse(url);

    // Check if the URL is from youtube.com and contains "playlist"
    if (uri.host == 'www.youtube.com' || uri.host == 'youtube.com') {
      // Extract playlist ID from the query parameters
      return uri.queryParameters['list'] ?? '';
    }

    // Check for shortened URLs (though uncommon for playlists)
    if (uri.host == 'youtu.be') {
      return uri.pathSegments[0]; // This will return the segment after the /
    }

    return ''; // Return an empty string if no valid ID is found
  }

  // Fetch videos from the playlist
  Future<void> fetchYouTubePlaylistVideos() async {
    final url = Uri.parse(
      'https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=50&playlistId=${extractPlaylistId(widget.programmingCourse.link)}&key=$apiKey',
    );

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List videos = data['items'];
        List<String> videoTitles = [];
        List<String> videoDes = [];

        for (var item in data['items']) {
          videoTitles.add(item['snippet']['title']);
          videoDes.add(item['snippet']['description']);
        }
        videoTitless = videoTitles;
        videoDescriptions = videoDes;
        // Extract video URLs
        setState(() {
          videoUrls = videos.map<String>((video) {
            final videoId = video['snippet']['resourceId']['videoId'];
            videoIds.add(videoId);
            return 'https://www.youtube.com/watch?v=$videoId'; // Construct the video URL
          }).toList();
        });
      } else {
        print('Failed to load playlist videos');
      }
    } catch (e) {
      print('Error fetching playlist videos: $e');
    }
  }

  void goNext(int index) {
    index < videoUrls.length - 1
        ? Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => Video(
                  goBack: goBack,
                  goNext: goNext,
                  description: videoDescriptions[index + 1],
                  videoTitle: videoTitless[index + 1],
                  index: index + 1,
                  videoId: videoIds[index + 1],
                )))
        : null;
  }

  void goBack(int index) {
    index > 0
        ? Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => Video(
                  goBack: goBack,
                  goNext: goNext,
                  description: videoDescriptions[index - 1],
                  videoTitle: videoTitless[index - 1],
                  index: index - 1,
                  videoId: videoIds[index - 1],
                )))
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        widget.programmingCourse.name,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      )),
      body: videoUrls.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: videoUrls.length,
              itemBuilder: (context, index) {
                isCompleted.add(false);
                return Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Hero(
                        tag: videoIds[index],
                        child: Image.network(
                          'https://img.youtube.com/vi/${videoIds[index]}/0.jpg', // Thumbnail from YouTube
                          width: 80,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      videoTitless[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    subtitle: Text(
                      videoDescriptions[index],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey[600], fontSize: 14.0),
                    ),
                    trailing: Checkbox(
                        value: isCompleted[index],
                        onChanged: (e) {
                          setState(() {
                            isCompleted[index] = e!;
                          });
                        }),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => Video(
                                goBack: goBack,
                                goNext: goNext,
                                description: videoDescriptions[index],
                                videoTitle: videoTitless[index],
                                index: index,
                                videoId: videoIds[index],
                              )));
                    },
                  ),
                );
              },
            ),
    );
  }
}