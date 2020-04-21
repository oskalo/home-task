import 'package:flutter/material.dart';
import 'package:hometask/second_screen.dart';

class FirstScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('First screen')),
            body: Center(
                child: RaisedButton(
              onPressed: () async {
                var navigationResult = await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondScreen()));
                if (navigationResult == "42"){
                  print("42");
                }
              },
              child: const Text('Second scrin'),
            ))));
  }
}
