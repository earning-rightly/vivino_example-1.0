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
        Expanded(child: TopChartsInContry()),
      ],
    );
  }
}

class TopChartsInContry extends StatefulWidget {
  const TopChartsInContry({Key? key}) : super(key: key);

  @override
  State<TopChartsInContry> createState() => _TopChartsInContryState();
}

class _TopChartsInContryState extends State<TopChartsInContry> {
  final List<Map<String, dynamic>> topListData = [
    {
      'icone': const Icon(Icons.monetization_on),
      'title': 'Best wines under ￦20000 right now'
    },
    {
      'icone': const Icon(Icons.monetization_on_sharp),
      'title': 'Best wines between ￦20000 and ￦40000 right now'
    },
    {
      'icone': const Icon(Icons.money),
      'title': 'Best wines between ￦40000 and ￦80000 right now'
    },
    {
      'icone': const Icon(Icons.money_rounded),
      'title': 'Best wines over ￦80000 right now'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Top chart in 대한민국'),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: topListData.length, itemBuilder: (c, i) {})),
      ],
    );
  }
}
