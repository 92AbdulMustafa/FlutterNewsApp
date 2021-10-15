class PopularNewsApiModel {
  late String title, imageUrl, description, author,id;
  PopularNewsApiModel(
      {required this.imageUrl,
      required this.author,
      required this.title,
      required this.description,
      required this.id});
      factory PopularNewsApiModel.fromJson(Map<String, dynamic> jsonData){
        return PopularNewsApiModel(
          imageUrl: jsonData['urlToImage'], 
          author: jsonData['author'], 
          title: jsonData['title'], 
          description: jsonData['description'], 
          id: jsonData['name']);
      }
}