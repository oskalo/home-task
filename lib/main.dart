import 'package:flutter/material.dart';

void main() => runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Container(child: Text("First task"), padding: const EdgeInsets.all(10.0))),
          body: new MyApp(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: Icon(Icons.navigation),
            backgroundColor: Colors.green,
          ),
        ),
    )
);

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(child: ListView(padding: const EdgeInsets.all(20), children: <Widget>[
      RaisedButton(onPressed: (){}, child:
        Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
          Text("ferst"),
          Icon(Icons.accessibility_new)
        ])),
      RaisedButton(onPressed: (){}, child:
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("second"),
          Icon(Icons.alarm_on)
        ])),
      RaisedButton(onPressed: (){}, child:
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("ather"),
          Icon(Icons.star)
        ])),
      RaisedButton(onPressed: (){}, child:
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("and atfer"),
          Icon(Icons.apps)
        ])),
      Card(
        child: ListTile(
          leading: Image.network("https://s.dou.ua/CACHE/images/img/announces/epam-university-840_hRpqktN/c02b6a29c5410ac15098d174db97c874.png"),
          title: Text('Test ListTile'),
          trailing: Icon(Icons.add),
        ),
      ),

    ],));
  }
}