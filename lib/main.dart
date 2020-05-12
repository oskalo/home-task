import 'package:flutter/material.dart';
import 'package:hometask/video.dart';
import 'package:hometask/web_view.dart';

void main() => runApp(startScreen());

Widget startScreen() => MaterialApp(home: MainScreen());


class MainScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('First screen')),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: () async {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => VideoScreen(),
                ),
              );
            },
            child: const Text('Video'),
          ),
          RaisedButton(
            onPressed: () async {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => WebViewScreen(),
                ),
              );
            },
            child: const Text('Web view'),
          )
        ],
      ),
    ));
  }
}