
class NewsApiModel {
  late String title, imageUrl, description, author,id;
  NewsApiModel(
      {required this.imageUrl,
      required this.author,
      required this.title,
      required this.description,
      required this.id});
      factory NewsApiModel.fromJson(Map<String, dynamic> jsonData){
        return NewsApiModel(
          imageUrl: jsonData['urlToImage'], 
          author: jsonData['author'], 
          title: jsonData['title'], 
          description: jsonData['description'], 
          id: jsonData['id']);
      }
}
