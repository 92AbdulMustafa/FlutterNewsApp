import 'package:flutter/material.dart';

class Headlines extends StatefulWidget {
  const Headlines({Key? key}) : super(key: key);
  @override
  _HeadlinesState createState() => _HeadlinesState();
}

class _HeadlinesState extends State<Headlines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Heer will be description",
            "sjfioerjfionsdk",
            "fierutiocjkvnerio"),
        const Padding(padding: EdgeInsets.only(top: 20)),
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Heer will be description",
            "jfiweuiojcsdkl",
            "ieruifndfkjerioeridj;oweuihuierdb"),
        const Padding(padding: EdgeInsets.only(top: 20)),
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Heer will be description",
            "fijweiofjilduehf",
            "nsfiefidfuijs;iojf;ios"),
        const Padding(padding: EdgeInsets.only(top: 20)),
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Heer will be description",
            "fiejwriowehuirfhwehfio",
            "jfiefioherjiofjwepi"),
        const Padding(padding: EdgeInsets.only(top: 20)),
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Heer will be description",
            "ejrfiwe4jfuilherpofh",
            "ierutigndfjkn;io"),
        const Padding(padding: EdgeInsets.only(top: 20)),
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Heer will be description",
            "hferuithvndf",
            "dnfguiejxcnfjo"),
        const Padding(padding: EdgeInsets.only(top: 20)),
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Heer will be description",
            "jweriofjerfh;uiosdh",
            "dsjferiojf;ioejpfoewj"),
        const Padding(padding: EdgeInsets.only(top: 20)),
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Heer will be description",
            "mfierjndjkfp",
            "fuieriofjhdij"),
        const Padding(padding: EdgeInsets.only(top: 20)),
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Heer will be description",
            "diosjfiorehgfuijfio",
            "fjaseiofjseiofjose"),
        const Padding(padding: EdgeInsets.only(top: 20)),
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Heer will be description",
            "ckjdeirjncjksjfiow",
            "sdjfiowejfojfiowefiorusdnk"),
        const Padding(padding: EdgeInsets.only(top: 20)),
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Here will be description",
            "sfkjeriojfioe",
            "cjkeprdvnj"),
        const Padding(padding: EdgeInsets.only(top: 20)),
        listview(
            "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-world-news-background-business-concept-2_bieq0ayrm_thumbnail-1080_01.png",
            "Author's name",
            "Here will be title",
            "Here will be description",
            "kfjsdklrjwioufisdnkl",
            "ksjfiojeiofjeo"),
      ]),
    ));
  }
}

Widget listview(var image, var authorname, var title, var description, var link,
    var source) {
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
                                    image: NetworkImage(image),
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
                          authorname,
                          style: const TextStyle(fontSize: 14),
                          // textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 170),
                          child: Text(
                            title,
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
                        description,
                        style: const TextStyle(fontSize: 13),
                        // textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 170),
                      child: Text(
                        link,
                        style: const TextStyle(fontSize: 10),
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 170),
                      child: Text(
                        source,
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 10),
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
