import 'package:flutter/material.dart';
import 'package:hometask/first_screen.dart';

class SecondScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second screen")),
      body: Center(child:
      Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/', arguments: FirstScreen(msg: "42"));
            },
            child: const Text('Return 42'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/', arguments: FirstScreen(msg: "AbErVaLlG"));
            },
            child: const Text('Return AbErVaLlG'),
          )
        ],
      ))
    );
  }
}