import 'package:flutter/material.dart';
import 'package:rest_api/article.dart';

class DetailPage extends StatelessWidget {
  final Article article;
  const DetailPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Artikel',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.network(article.urlToImage),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(article.content!),
          ),
        ],
      ),
    );
  }
}
