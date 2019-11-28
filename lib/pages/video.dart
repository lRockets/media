import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

final videoPlayerController = VideoPlayerController.network(
  'https://flutter.github.io/assets-for-api-docs/videos/butterfly.mp4');


final chewieController = ChewieController(
  videoPlayerController: videoPlayerController,
  aspectRatio: 1,
  autoPlay: true,
  looping: true,
);

final playerWidget = Chewie(
  controller: chewieController,
);

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
    chewieController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("视频")
      ),
      body:playerWidget        
    );
  }
}