
import 'package:flutter/material.dart';


class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: const Center(
                child: Text(
              "Favourite",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
            )),
        ),
        
        body: SingleChildScrollView(
          child: Column(
            children: [
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
              listview(
                  "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
                  "Iphone 12 Pro Max",
                  "20 pieces \$90",
                  "Quantity:1"),
            ],
          ),
        ));
  }
}

Widget listview(var image, var text1, var text2, var text3) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          // color: Colors.grey[100]
          height: 100,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1),
                child: Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white10),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text1,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 5, top: 2),
                          child: Icon(
                            Icons.star_rate,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text("5.0 (23 Reviews)"),
                        )
                      ],
                    ),
                    Text(text2),
                    Text(text3),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}
