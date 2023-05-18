import 'package:flutter/material.dart';
import './detaillsearch/detail_search_page.dart';
import 'package:vivino_demo/style/standardStyle.dart';
import './search_page_content.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              if (index == 0) {
                return SearchBar();
              }
              if (index == 1) {
                return WinesType();
              }
              if (index == 2)
                return OurBestOffer();
              else {
                return Container();
              }
            },
            childCount: 4,
          ),
        ),
      ],
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // Add padding around the search bar
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        // Use a Material design search bar
        child: TextField(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (c) {
              return DetailSearchPage();
            }));
          },
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search any wine',
            // Add a clear button to the search bar
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () => _searchController.clear(),
            ),
            // Add a search icon or button to the search bar
            prefixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Perform the search here
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}

class WinesType extends StatelessWidget {
  WinesType({super.key});

  final int contanerWidth = 400;
  final SearchStyle searchStyle = SearchStyle();
  static var datum = [
    {
      'name': 'Red',
      'picture': 'assets/search_page/wines type/red.jpg',
      'color': const Color(0xF4EF4856)
    },
    {
      'name': 'White',
      'picture': 'assets/search_page/wines type/white.jpg',
      'color': const Color(0xFFDAD8D8)
    },
    {
      'name': 'Sparking',
      'picture': 'assets/search_page/wines type/sparkling.jpg',
      'color': const Color(0xFFF8E4E4)
    },
    {
      'name': 'Rose',
      'picture': 'assets/search_page/wines type/rose.jpg',
      'color': const Color(0xA2CC6A72)
    },
    {
      'name': 'Dessert',
      'picture': 'assets/search_page/wines type/dessert.jpg',
      'color': const Color(0xA2CC6A72)
    },
    {
      'name': 'Fortified',
      'picture': 'assets/search_page/wines type/fortified.jpg',
      'color': const Color(0xA2CC6A72)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black, width: 2))),
      child: Column(children: [
        TextButton(
            onPressed: () {},
            child: Text(
              "Shop wines by type",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Container(
              child: Column(
                children: [
                  for (var data in datum.take(3))
                    buildScrollToIndexes(data['picture'].toString(),
                        data['name'].toString(), data['color'] as Color),
                ],
              ),
            ),
            Container(
              child: Column(children: [
                for (var data in datum.skip(3))
                  buildScrollToIndexes(data['picture'].toString(),
                      data['name'].toString(), data['color'] as Color),
              ]),
            )
          ]),
        )
      ]),
    );
  }
}

class OurBestOffer extends StatelessWidget {
  const OurBestOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.all(3.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black, width: 2))),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            primary: Colors.white60,
            onPrimary: Colors.black,
            textStyle: TextStyle(fontSize: 23),
          ),
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(
                'assets/search_page/our best offer/shop our best offer.png',
                width: 100,
                height: 100,
              ),
              SizedBox(width: 10),
              Text('Shop our best offers')
            ],
          )),
    );
  }
}
