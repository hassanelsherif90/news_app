import 'package:dio/dio.dart';
import 'package:news_app/model/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNewsGeneral({required String category}) async {
    try {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=ab495b385a4c4bbda82fc7cecdea0cc7&category=$category');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articleList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);

      articleList.add(articleModel);
    }

    return articleList;
    } catch (e) {
      return [];
    }
  }
}
