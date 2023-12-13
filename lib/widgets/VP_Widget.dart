import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key, required this.videoUrl});

  final String videoUrl; //? ** Will store the URL of the video

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

late VideoPlayerController _videoPlayerController; //? To handle playback
// late Future<void> _initializeVideoPlayerFuture;

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.asset(
      'assets/videos/House S1-8 on Showmax _ Medical Drama Series Trailer.mp4',
    )..initialize().then((_) {
        _videoPlayerController.play();
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0, 0),
      children: [
        Container(
            child: _videoPlayerController.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _videoPlayerController.value.aspectRatio,
                    child: VideoPlayer(_videoPlayerController))
                : Container()),
        ElevatedButton(
            onPressed: () {
              _videoPlayerController.play();
            },
            child: Icon(Icons.play_arrow))
      ],
    );
  }
}
