import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWeb extends StatefulWidget {
  @override
  _MyWebState createState() => _MyWebState();
}

class _MyWebState extends State<MyWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web view"),
      ),
      body: WebView(
        initialUrl: "https://trello.com",
      ),
    );
  }
}
