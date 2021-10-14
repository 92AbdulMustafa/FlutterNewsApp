// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:news_app/Model/headlinemodel.dart';
import 'package:news_app/Model/headlinenews_api.dart';

class Headlines extends StatefulWidget {
  const Headlines({Key? key}) : super(key: key);
  @override
  _HeadlinesState createState() => _HeadlinesState();
}

class _HeadlinesState extends State<Headlines> {
  List<NewsApiModel>? newsList;
  void initState() {
    super.initState();
    getNews().then((value) {
      setState(() {
        newsList = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        ListView.builder(
          itemCount: newsList!.length,
          itemBuilder: (context, index) {
            return listview(size, newsList![index]);
          },
        )
      ]),
    ));
  }
}

// var image, var authorname, var title, var description
Widget listview(Size size, NewsApiModel model) {
  return FittedBox(
    child: Container(
      // width: 400,
      // height: 400,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white10),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: FittedBox(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                // color: Colors.grey[100]
                // height: 380,
                // width: 350,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Container(
                              // width: ,
                              // height: 200,

                              // width: 345,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  image: DecorationImage(
                                    image: NetworkImage(model.imageUrl),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.rectangle),
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 290, bottom: 200),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.favorite_rounded),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 180),
                        child: Text(
                          model.author,
                          style: const TextStyle(fontSize: 14),
                          // textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    Stack(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 170),
                          child: Text(
                            model.title,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 170),
                      child: Text(
                        model.description,
                        style: const TextStyle(fontSize: 13),
                        // textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
