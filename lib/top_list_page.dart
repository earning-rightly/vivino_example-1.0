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
          title: ShowTitle(),
        ),
        Expanded(child: showTopListContent(topListData: topListData)),
      ],
    );
  }
}

class ShowTitle extends StatelessWidget {
  const ShowTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'Top Charts ',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          TextSpan(
            text: 'in',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
          TextSpan(
            text: ' 대한민국',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class showTopListContent extends StatefulWidget {
  const showTopListContent({Key? key, required this.topListData})
      : super(key: key);
  final List<Map<String, dynamic>> topListData;

  @override
  State<showTopListContent> createState() => _showTopListContentState();
}

class _showTopListContentState extends State<showTopListContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.topListData.length, // 유저가 V사용한 스크롤 정보를 저장한다
        itemBuilder: (c, i) {
          return ListTile(
              leading: widget.topListData[i]['icone'],
              title: Text('${widget.topListData[i]['title']}'));
        });
  }
}
