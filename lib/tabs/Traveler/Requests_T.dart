import 'package:easyship/widgets/Traveler/RequestCard_T.dart';
import 'package:easyship/widgets/Traveler/App_bar_T.dart';
import 'package:flutter/material.dart';

class RequestsTab_T extends StatefulWidget {


  @override
  _RequestsTab_TState createState() => _RequestsTab_TState();
}

class _RequestsTab_TState extends State<RequestsTab_T> {
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
              RequestCard_T(),
              RequestCard_T(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: const Icon(Icons.add,),
            backgroundColor: Colors.purple[700],
          ),
        ),
      ),
    );
  }
}
