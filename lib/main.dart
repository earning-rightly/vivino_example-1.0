import 'package:flutter/material.dart';
import './screens/friends/friends_page.dart';
import './screens/myprofile/myprofile_page.dart';
import './screens/search/search_page.dart';

import './screens/top_list/top_list_page.dart';

import 'style/standardStyle.dart' as standardStyle;

void main() {
  runApp(MaterialApp(
    theme: standardStyle.them,
    home: homePage(),
  ));
}

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: standardStyle.them,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_box_outlined),
                onPressed: () {},
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.flash_on),
                ),
                Tab(
                  icon: Icon(Icons.sync),
                ),
                Tab(
                  icon: Icon(Icons.storage),
                ),
                Tab(
                  icon: Icon(Icons.present_to_all_outlined),
                ),
              ],
            ),
            title: const Text('Example'),
          ),
          body: const TabBarView(
            children: [
              TopListPage(),
              SearchPage(),
              FriendsPage(),
              MyPrpfilePage()
            ],
          ),
        ),
      ),
    );
  }
}
