import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/Model/popularmodel.dart';

Future<List<PopularNewsApiModel>> getNews() async {
  Uri uri = Uri.parse(
      "https://newsapi.org/v2/everything?q=apple&from=2021-10-12&to=2021-10-12&sortBy=popularity&apiKey=e92a7c0e3479484a99a31fe3ed104bdc");
  final response = await http.get(uri);
  if (response.statusCode == 200 || response.statusCode == 201) {
    Map<String, dynamic> map = json.decode(response.body);
    List _articlesList = map['articles'];
    List<PopularNewsApiModel> newsList = _articlesList
        .map((jsonData) =>PopularNewsApiModel.fromJson(jsonData))
        .toList();
    return newsList;
  } else {
    return [];
  }
}
