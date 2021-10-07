import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/home.dart';
import 'package:news_app/pages/profile.dart';
import 'package:news_app/pages/search.dart';

class GuestNavigation extends StatefulWidget {
  const GuestNavigation({ Key? key }) : super(key: key);

  @override
  _GuestNavigationState createState() => _GuestNavigationState();
}

class _GuestNavigationState extends State<GuestNavigation> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final screens = [
      const Home(),
      const Search(),
      const Profile(),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        height: 60,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) => setState(() => this.index = index),
        items: const <Widget>[
          Icon(Icons.home,color: Colors.white,),
          Icon(Icons.search,color: Colors.white),
          // Icon(Icons.favorite_rounded,color: Colors.white),
          // Icon(Icons.person,color: Colors.white),
        ],
      ),
      body: screens[index],
    );
  }
}