import 'package:flutter/material.dart';

class TopListPage extends StatelessWidget {
  const TopListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 500,
            height: 250,
            child: Image.asset(
              'assets/top_list_page_image/wines.jpg',
              fit: BoxFit.contain,
            )),
      ],
    );
  }
}
