import 'package:dio/dio.dart';
import 'package:news_application/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=bitcoin&apiKey=64ad603d2d434ca5932c5050b8d0dfc4');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles']; // list of maps
      List<ArticleModel> articlesList = []; // list of objects
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            article['urlToImage'], article['title'], article['description']);
        articlesList.add(articleModel);
      }
      return articlesList;
    } on Exception catch (e) {
      return [];
    }
  }
}
//https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category
//https://newsapi.org/v2/top-headlines?apiKey=64ad603d2d434ca5932c5050b8d0dfc4&category=$category
//https://newsapi.org/v2/top-headlines?apiKey=64ad603d2d434ca5932c5050b8d0dfc4&category=sports
//https://newsapi.org/v2/everything?q=bitcoin&apiKey=64ad603d2d434ca5932c5050b8d0dfc4&category=$category