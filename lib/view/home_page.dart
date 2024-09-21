import 'package:flutter/material.dart';
import 'package:news_app/view/NewsListviewBuilder.dart';
import 'package:news_app/view/category_list_view.dart';

import '../widget/appbar_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppbarView(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryCardList()),
            NewsListviewBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
