import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  const Api({Key? key}) : super(key: key);

  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {
  getapi() async {
    // var users = [];
    var response = await http.get(Uri.http("api.mediastack.com",
        "v1/news? access_key = 0a247a2cf89cb6ef41d8860affff0a60"));
    var jsonData = jsonDecode(response.body);
    for (var i in jsonData) {
      ApiModel news = ApiModel(i['image'], i['author'], i['title'],
          i['description'], i['link'], i['source']);
      print(news);
      break;
      // users.add(user);
    }
    // return users;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ApiModel {
  var description, link, author, title, source, image;
  ApiModel(this.image, this.author, this.title, this.description, this.link,
      this.source) {}
}
