import 'package:flutter/material.dart';
import 'package:news_application/widgets/News_List_View_Builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        NewsListViewBuilder(
          category: category,
        ),
      ],
    ));
  }
}
