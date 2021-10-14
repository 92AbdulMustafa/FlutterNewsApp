import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/Model/headlinemodel.dart';

Future<List<NewsApiModel>> getNews() async {
  Uri uri = Uri.parse(
      "https://newsapi.org/v2/everything?q=tesla&from=2021-09-11&sortBy=publishedAt&apiKey=e92a7c0e3479484a99a31fe3ed104bdc");
  final response = await http.get(uri);
  if (response.statusCode == 200 || response.statusCode == 201) {
    Map<String, dynamic> map = json.decode(response.body);
    List _articlesList = map['articles'];
    List<NewsApiModel> newsList = _articlesList
        .map((jsonData) => NewsApiModel.fromJson(jsonData))
        .toList();
    return newsList;
  } else {
    return [];
  }
}
