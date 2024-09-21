import 'package:flutter/material.dart';
import 'package:news_app/view/NewsListviewBuilder.dart';
import 'package:news_app/view/category_list_view.dart';
import 'package:news_app/services/web_view_container.dart';

import '../widget/appbar_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  AppbarView(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 32),
        child: CustomScrollView(
          slivers: [
             SliverToBoxAdapter(child: CategoryCardList()),
             NewsListviewBuilder(category: 'general'),
            // SliverToBoxAdapter(
            //     child: ElevatedButton(
            //         onPressed: () {
            //           Navigator.of(context).push(
            //             MaterialPageRoute(
            //               builder: (context) {
            //                 return const WebViewContainer(url: 'https://www.youtube.com/');
            //               },
            //             ),
            //           );
            //         },
            //         child: const Text('URL'))),
          ],
        ),
      ),
    );
  }
}
