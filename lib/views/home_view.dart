import 'package:flutter/material.dart';
import 'package:news_application/widgets/News_List_View.dart';
import 'package:news_application/widgets/News_List_View_Builder.dart';
import 'package:news_application/widgets/categories_list_view.dart';
import 'package:news_application/widgets/category_card.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'News Cloud',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child: CategoriesListView()),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
                NewsListViewBuilder(
                  category: 'general',
                ),
              ],
            )));
  }
}
