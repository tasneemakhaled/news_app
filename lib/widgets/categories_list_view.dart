import 'package:flutter/material.dart';
import 'package:news_application/models/category_model.dart';
import 'package:news_application/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  List<CategoryModel> categories = [
    CategoryModel(
        categoryName: 'sports',
        image:
            'https://static.vecteezy.com/system/resources/previews/025/804/195/non_2x/sport-news-football-composition-vector.jpg'),
    CategoryModel(
        categoryName: 'entertainment',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO821Chq6MWkkjlx6mu_iWW4VGSO8w9VZWsg&s'),
    CategoryModel(
        categoryName: 'general',
        image:
            'https://previews.123rf.com/images/maxkabakov/maxkabakov1508/maxkabakov150802145/44282232-news-concept-pixelated-blue-business-news-icon-on-digital-background.jpg'),
    CategoryModel(
        categoryName: 'business',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9pJQda0wd62_tArwNO29GZkAEyvRCQUHCYQ&s'),
    CategoryModel(
        categoryName: 'health',
        image:
            'https://i.pinimg.com/736x/1e/8b/87/1e8b872db12cef272a3f3c4a8f974a0f.jpg'),
    CategoryModel(
        categoryName: 'science',
        image:
            'https://media.licdn.com/dms/image/C4D1BAQFQGGxw6vPUFw/company-background_10000/0/1583226770307/science_news_cover?e=2147483647&v=beta&t=a869-vWkG8snGaebsGDqbv9cr-2Mje9R33z2YlJYFNU'),
    CategoryModel(
        categoryName: 'technology',
        image:
            'https://lh3.googleusercontent.com/proxy/7Blq-uLL_n-AkcyqyjV199Z9vmIR4EWBqfKRys1sS2bq9h-WCC0tKoT0WdYF1cxLjO74Vp2xMrkRBeSrQX8J-vdQnrQKM9XXC5ObXRUcS2J0'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
