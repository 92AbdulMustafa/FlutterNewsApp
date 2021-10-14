import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:news_app/pages/edit_profile.dart';
import 'package:http/http.dart' as http;

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? file;
  // getUser()async{
  //   var profile =await http.get(Uri.https("newsapp-flutter.herokuapp.com", "signup"));
  //   var jsonData = jsonDecode(profile.body);
  //   for(var i in jsonData){
  //     if(){

  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Center(
            child: Text(
          "Profile",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        )),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Padding(
                padding:const EdgeInsets.only(top: 10, left: 10),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: 
                  file == null
                            ? const AssetImage("")
                            : FileImage(File(file!.path)) as ImageProvider
                  // NetworkImage(
                  //     "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 210),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditProfile()));
                    },
                    icon: const Icon(Icons.edit)),
              ),
            ],
          ),
          Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                          child: Text(
                        "Muhammad Abdul Mustafa Azmi",
                        style: TextStyle(fontSize: 18),
                      ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                          child: Text(
                        "abc@gmail.com",
                        style: TextStyle(fontSize: 18),
                      ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                          child: Text(
                        "Karachi Pakistan",
                        style: TextStyle(fontSize: 18),
                      ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                          child: Text(
                        "0123456789",
                        style: TextStyle(fontSize: 18),
                      ))),
                ),
              ]),
        ],
      ),
    );
  }
}
