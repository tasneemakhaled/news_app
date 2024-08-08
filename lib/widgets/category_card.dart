import 'package:flutter/material.dart';
import 'package:news_application/models/category_model.dart';
import 'package:news_application/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: 16),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(category.image),
            ),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
