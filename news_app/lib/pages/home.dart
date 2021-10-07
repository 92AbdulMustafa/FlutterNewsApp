import 'package:flutter/material.dart';
import 'package:news_app/pages/Tab%20Bar%20Pages/headlines.dart';
import 'package:news_app/pages/Tab%20Bar%20Pages/popularnews.dart';
import 'package:news_app/pages/Tab%20Bar%20Pages/sports.dart';
import 'package:news_app/pages/Tab%20Bar%20Pages/topstories.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                child: Text(
                  "Top Stories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Headlines",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Popular News",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Sports News",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: const Center(
                child: Text(
              "Home",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
          ),
          body: const TabBarView(
            children: [
              TopStories(),
              Headlines(),
              PopularNews(),
              Sports(),
            ],
          )),
    );
  }
}
