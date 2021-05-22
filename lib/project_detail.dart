import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ProjectDetailVideo extends StatefulWidget {
  final String videoID;
  final String profileImg;
  final List<Widget> actions;

  const ProjectDetailVideo(
      {Key key, this.videoID = "", this.profileImg = "", this.actions})
      : super(key: key);

  @override
  State<ProjectDetailVideo> createState() => _ProjectDetailVideoState();
}

class _ProjectDetailVideoState extends State<ProjectDetailVideo> {
  // ignore: close_sinks
  YoutubePlayerController _controller ;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoID,
      params: YoutubePlayerParams(
        startAt: Duration(seconds: 0),
        showControls: true,
        showFullscreenButton: true,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: Image.asset(backGroundImg).image,
          //           fit: BoxFit.fitHeight
          //       )
          //   ),
          // ),

          Padding(
            padding: EdgeInsets.only(left: 20),
            child: YoutubePlayerIFrame(
              controller: _controller,
              aspectRatio: 16 / 9,
            ),
          ),
          Positioned(
              left: 0,
              top: 0,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),
          // GestureDetector(
          //   on
          // )
        ],
      ),
    );
  }
}
