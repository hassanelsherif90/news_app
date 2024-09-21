import 'package:flutter/material.dart';
import 'package:news_app/model/categorymodel.dart';
import 'package:news_app/view/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: categoryModel.categoryname);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(categoryModel.image),
                fit: BoxFit.fill,
              ),
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Text(
              categoryModel.categoryname,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
