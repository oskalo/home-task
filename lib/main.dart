import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';

void main() => runApp(
    MaterialApp(
        initialRoute: '/',
        routes: Router,
    )
);

var Router = {
  '/':(BuildContext context) => FirstScreen(),
  '/second':(BuildContext context) => SecondScreen(),
};