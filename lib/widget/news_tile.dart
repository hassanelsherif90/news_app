import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/web_view_container.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)
        {
          return WebViewContainer(url: articleModel.url);
        },
        ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  articleModel.image ?? '',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 12,
            ),
            Text(
              articleModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              articleModel.subTitle ?? '',
              maxLines: 2,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
