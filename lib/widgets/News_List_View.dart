import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_application/Services/news_service.dart';
import 'package:news_application/models/article_model.dart';
import 'package:news_application/widgets/News_Tile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.articles});
  List<ArticleModel> articles = [];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
