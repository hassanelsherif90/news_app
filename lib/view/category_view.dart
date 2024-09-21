import 'package:flutter/material.dart';
import 'package:news_app/view/NewsListviewBuilder.dart';
import 'package:news_app/widget/appbar_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarView(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
            slivers: [
               NewsListviewBuilder(category: category),
            ]
        ),
      )
      );
  }
}
