import 'package:easyship/widgets/RequestCard.dart';
import 'package:easyship/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class Requests extends StatefulWidget {


  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            toolbarHeight: 74.0,
            elevation: 0.0,
            bottom: const TabBar(
              indicatorColor: Colors.purple,
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                    text: 'ALL REQUESTS',
                    icon: Icon(Icons.auto_awesome_motion)),
                Tab(text: 'MY REQUESTS', icon: Icon(Icons.bookmarks_rounded)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              RequestCard(),
              RequestCard(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: const Icon(
              Icons.add,
            ),
            backgroundColor: Colors.purple[700],
          ),
        ),
      ),
    );
  }
}