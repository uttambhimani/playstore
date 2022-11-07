import 'package:flutter/material.dart';
import 'package:playstore/second_screen.dart';

import 'first_screen.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
                  child: Card(
                    elevation: 4,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Icon(Icons.menu),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Search for apps & games",
                              style:
                                  TextStyle(fontSize: 16.5, color: Colors.grey),
                            ),
                            Spacer(),
                            Icon(Icons.mic)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                DefaultTabController(
                  length: 4, // length of tabs
                  initialIndex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TabBar(
                        isScrollable: true,
                        indicatorWeight: 3,
                        indicatorColor: Colors.green,
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                        tabs: [
                          Tab(text: "For You"),
                          Tab(text: "Top Charts"),
                          Tab(text: "Categories"),
                          Tab(text: "Editor's Choice"),
                        ],
                      ),
                      SizedBox(
                        height: 820,
                        child: TabBarView(
                          children: [
                            screenone(),
                            screentwo(),
                            screenone(),
                            screenone(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
