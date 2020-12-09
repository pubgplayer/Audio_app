import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class VideoExampleNetwork extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<VideoExampleNetwork> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.network(
          "https://raw.githubusercontent.com/pubgplayer/fluttertry/master/1.mp4")
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }
  }

  @override
  void deactivate() {
    if (playerController != null) {
      playerController.setVolume(0.0);
      playerController.removeListener(listener);
    }

    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Using Network'),
      ),
      body: Center(
          child: AspectRatio(
              aspectRatio: 4 / 3,
              child: Container(
                child: (playerController != null
                    ? VideoPlayer(
                        playerController,
                      )
                    : Container()),
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createVideo();
          playerController.play();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
