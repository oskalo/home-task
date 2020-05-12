import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  final Completer<WebViewController> _completer = Completer<WebViewController>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Web view"),
      ),
      body: WebView(
        initialUrl: "https://www.google.com",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController){
          _completer.complete(webViewController);
        },
      ),
      floatingActionButton: FutureBuilder<WebViewController>(
        future: _completer.future,
        builder: (BuildContext context, AsyncSnapshot<WebViewController> controller) {
          return FloatingActionButton(
              child: Icon(Icons.ac_unit), onPressed: (){
            controller.data.loadUrl("https://www.epam.com");
          });
        },
      ),
    );
  }
}