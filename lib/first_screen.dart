import 'package:flutter/material.dart';
import 'package:hometask/post.dart';
import 'package:hometask/second_screen.dart';
import 'first_screen.i18n.dart';
import 'package:i18n_extension/i18n_widget.dart';

class FirstScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('First screen'.i18n)),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: () async {
              var navigationResult = await Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => SecondScreen()));
              if (navigationResult != null) {
                print(navigationResult);
                showSimpleDialog(context, navigationResult as Post);
              }
            },
            child: Text('Second screen'.i18n),
          ),
          RaisedButton(
            onPressed: () async {
              _changeLanguage(context);
            },
            child: Text('Change language'.i18n),
          ),
        ],
      ),
    ));
  }
}

void _changeLanguage(BuildContext context) => I18n.of(context).locale =
    (I18n.localeStr == "ua_ua") ? null : Locale("ua", "UA");

void showSimpleDialog(BuildContext context, Post content) => showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(content.title),
          content: Text(content.body),
          actions: <Widget>[
            FlatButton(
                child: Text('Ok'.i18n),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        );
      },
    );
