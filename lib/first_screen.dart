import 'package:flutter/material.dart';
import 'package:hometask/post.dart';
import 'package:hometask/second_screen.dart';

class FirstScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: const Text('First screen')),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            var navigationResult = await Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (BuildContext context) => SecondScreen()));
            if (navigationResult != null) {
              print(navigationResult);
              showSimpleDialog(context, navigationResult as Post);
              //FirstScreen(msg: navigationResult.toString()).build(context);
            }
          },
          child: const Text('Second screen'),
        ),
      ),
    ));
  }
}

void showSimpleDialog(BuildContext context, Post content) => showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(content.title),
          content: Text(content.body),
          actions: <Widget>[
            FlatButton(
                child: const Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        );
      },
    );
