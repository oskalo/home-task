import 'package:flutter/material.dart';

class Argument {
  final String msg;
  Argument(this.msg);
}

class FirstScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    final Argument args = ModalRoute.of(context).settings.arguments;
    if (args != null){
      return SimpleDialog(
        title: Text(args.msg),
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