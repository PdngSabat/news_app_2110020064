import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app_2110020064/model/article_model.dart';
class ApiService2 {
  final endPointUrl = "newsapi.org";
  final client = http.Client();

  Future<List<Article>> getArticle() async {
    final queryParameters = {
      //'country': 'us',
      'q': 'automotive',
      'apiKey': '5af9ac9e372644b7b618293a9f7c52b1'
    };

    final uri = Uri.https(endPointUrl, '/v2/everything', queryParameters);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}