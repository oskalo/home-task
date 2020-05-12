import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewList extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;

  ChewList({@required this.videoPlayerController, this.looping, Key key})
      : super(key: key);

  @override
  _ChewListState createState() => _ChewListState();
}

class _ChewListState extends State<ChewList> {
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      autoPlay: false,
      looping: widget.looping,
      errorBuilder: (context, errorMessage) {
        //showSimpleDialog(context, errorMessage);
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.redAccent),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose(){
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}

void showSimpleDialog(BuildContext context, String content) => showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Error'),
        content: Center(
          child: Text(
            content,
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
        actions: <Widget>[
          FlatButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ],
      );
    });
