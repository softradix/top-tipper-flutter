import 'package:flutter/material.dart';
import 'package:flutter_top_tipper/colors.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayerScreen extends StatefulWidget {
  const MyVideoPlayerScreen({Key key}) : super(key: key);

  @override
  _MyVideoPlayerScreenState createState() => _MyVideoPlayerScreenState();
}

class _MyVideoPlayerScreenState extends State<MyVideoPlayerScreen> {

  VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: 200.0,
          color: orange,
          child: _controller.value.isInitialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : Container(),
        ),
        InkWell(
          onTap: (){
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause_circle_filled_rounded : Icons.play_circle_outline_outlined,
          ),
        ),
      ],
    );
  }
}
