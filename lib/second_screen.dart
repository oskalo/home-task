import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Second screen")),
      body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop("42");
                },
                child: const Text('Return 42'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop("AbErVaLlG");
                },
                child: const Text('Return AbErVaLlG'),
              )
            ],
          )),
    );
  }
}
