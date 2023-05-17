import 'package:flutter/material.dart';
import './detaillsearch/detail_search_page.dart';
import 'package:vivino_demo/style/standardStyle.dart';

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
              } else {
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

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextButton(
          onPressed: () {},
          child: Text(
            "Shop wines by type",
            style: TextStyle(color: Colors.black, fontSize: 20),
          )),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(children: [
              Container(
                color: Colors.pink,
                width: 450,
                height: 100,
              ),
              Container(
                color: Colors.red,
                width: 450,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 450,
                height: 100,
              )
            ]),
            Column(
              children: [
                Container(
                  color: Colors.green,
                  width: 450,
                  height: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 450,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  width: 450,
                  height: 100,
                )
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
