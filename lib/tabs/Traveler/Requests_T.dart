import 'package:easyship/tabs/Traveler/Add_T.dart';
import 'package:easyship/widgets/Sender/Drawer_S.dart';
import 'package:easyship/widgets/Traveler/Drawer_T.dart';
import 'package:easyship/widgets/Traveler/RequestCard_T.dart';
import 'package:easyship/widgets/Traveler/App_bar_T.dart';
import 'package:flutter/material.dart';

class RequestsTab_T extends StatefulWidget {
  @override
  _RequestsTab_TState createState() => _RequestsTab_TState();
}

class _RequestsTab_TState extends State<RequestsTab_T> {

   bool _search = false;
   String firstTitle = 'REQUESTS';
   String secondTitle = 'ADD REQUESTS';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _search = !_search;
          });},
        child: Icon(_search? Icons.close : Icons.add,),
        backgroundColor: Colors.purpleAccent[700],
      ),
      body: !_search
          ? DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              toolbarHeight: 74.0,
              elevation: 0.0,
              bottom: TabBar(
                indicatorColor: Colors.purpleAccent,
                labelColor: Colors.purpleAccent,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                      text: 'ALL REQUESTS',
                      icon: Icon(Icons.auto_awesome_motion)),
                  Tab(
                      text: 'MY REQUESTS',
                      icon: Icon(Icons.bookmarks_rounded)),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                RequestCard_T(),
                RequestCard_T(),
              ],
            ),
          ))
          : Add_T(),
    );
  }
}
