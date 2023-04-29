import "package:flutter/material.dart";
import "package:imdb_clone/screens/home.dart";

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text("Video")
      ),
    );
  }
}