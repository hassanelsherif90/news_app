import 'package:flutter/material.dart';
import 'package:news_app/model/categorymodel.dart';
import 'package:news_app/widget/category_card.dart';

class CategoryCardList extends StatelessWidget {
  const CategoryCardList({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(categoryname: 'Sports', image: 'assets/sports.avif'),
    CategoryModel(categoryname: 'Business', image: 'assets/business.avif'),
    CategoryModel(
        categoryname: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoryModel(categoryname: 'General', image: 'assets/general.avif'),
    CategoryModel(categoryname: 'Health', image: 'assets/health.avif'),
    CategoryModel(categoryname: 'Science', image: 'assets/science.avif'),
    CategoryModel(categoryname: 'Technology', image: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categories[index]);
        },
      ),
    );
  }
}
