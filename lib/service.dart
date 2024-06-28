import 'dart:convert';

import 'package:rest_api/article.dart';
import 'package:http/http.dart' as http;

class Service {
  static Future<List<Article>> fetchArticles() async {
    const url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=e05ff16d403143dd87a65ed4be8c2764';
    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      final result = responseBody["articles"] as List;
      final listArticle = result.map((json) => Article.fromJson(json)).toList();
      return listArticle;
    } else {
      throw Exception("Gagal Ambil data Article");
    }
  }
}