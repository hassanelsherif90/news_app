import 'package:flutter/material.dart';

class AppbarView extends StatelessWidget implements PreferredSizeWidget {
  const AppbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shadowColor: Colors.transparent,
      centerTitle: true,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'News',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            'Cloud',
            style: TextStyle(color: Colors.orange),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
