import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  String _msg;

  FirstScreen({String msg}):_msg = msg;

  Widget build(BuildContext context) {
    if (_msg != null){
      return SimpleDialog(
        title: Text('Got value $_msg'),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () { Navigator.pushNamed(context, "/"); },
            child: const Text('Ok'),
          ),
        ],
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text('First screen')),
        body: Center(child:
        RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        child: const Text('Second scrin'),
        )
      )
    );
  }
}
