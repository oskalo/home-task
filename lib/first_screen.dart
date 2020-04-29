import 'package:flutter/material.dart';
import 'package:hometask/second_screen.dart';

class FirstScreen extends StatelessWidget {
  String _msg;

  FirstScreen({String msg}) {
    if (msg != null) {
      this._msg = msg;
    }
  }

  Widget build(BuildContext context) {
    print(this._msg);
    if (this._msg != null) {
      return SimpleDialog(
        title: Text("$_msg"),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {},
            child: const Text('Ok'),
          ),
        ],
      );
    }

    return (Scaffold(
        appBar: AppBar(title: Text('First screen')),
        body: Center(
            child: RaisedButton(
          onPressed: () async {
            var navigationResult = await Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (BuildContext context) => SecondScreen()));
            if (navigationResult != null) {
              FirstScreen(msg: navigationResult.toString()).build(context);
            }
          },
          child: const Text('Second screen'),
        ))));
  }
}
