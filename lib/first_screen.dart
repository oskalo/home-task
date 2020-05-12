import 'package:flutter/material.dart';
import 'package:hometask/second_screen.dart';
import 'package:hometask/video.dart';
import 'package:hometask/web_view.dart';

class FirstScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('First screen')),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: () async {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => Video(),
                ),
              );
            },
            child: const Text('Video'),
          ),
          RaisedButton(
            onPressed: () async {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => MyWeb(),
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

void showSimpleDialog(BuildContext context, String content) => showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Yo'),
        content: Text(content),
        actions: <Widget>[
          FlatButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ],
      );
    });
