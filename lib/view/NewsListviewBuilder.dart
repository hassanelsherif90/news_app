import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/view/news_tile_listview.dart';



class NewsListviewBuilder extends StatefulWidget {
  final String category;

  const NewsListviewBuilder({super.key, required this.category});

  @override
  State<NewsListviewBuilder> createState() => _NewsListviewBuilderState();
}

class _NewsListviewBuilderState extends State<NewsListviewBuilder> {

  var future ;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   future = NewsServices(Dio()).getNewsGeneral(category: widget.category);
  }
  @override
  Widget build(BuildContext context)  {
    return FutureBuilder <List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListview(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
              child: Center(
                child: Text('Hass Error'),
              ),
          );
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
        },
    );
  }
}
