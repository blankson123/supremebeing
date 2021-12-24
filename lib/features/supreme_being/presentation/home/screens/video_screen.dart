import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

final VideoPlayerController videoPlayerController =
    VideoPlayerController.asset('assets/videos/sound_bath.mp4');

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  _TempVideoScreenState createState() => _TempVideoScreenState();
}

class _TempVideoScreenState extends State<VideoScreen> {
  final ChewieController chewieController = ChewieController(
    videoPlayerController: videoPlayerController,
    autoPlay: true,
    looping: true,
  );

  @override
  void initState() {
    videoPlayerController.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chewie(
        controller: chewieController,
      ),
    );
  }
}
