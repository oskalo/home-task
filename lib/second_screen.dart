import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hometask/post.dart';

import 'dart:async';
import 'dart:convert';

class HttpService {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getPosts() async {
    http.Response res = await http.get(postsURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
}

class SecondScreen extends StatelessWidget {
  final HttpService httpService = HttpService();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> posts = snapshot.data;
            return ListView(
              children: posts
                  .map(
                    (Post post) => Card(
                      child: ListTile(
                        leading: FlutterLogo(size: 72.0),
                        title: Text('${post.title}'),
                        subtitle: Text('${post.body}'),
                        trailing: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).pop(post);
                          },
                          child: Icon(Icons.more_vert),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
