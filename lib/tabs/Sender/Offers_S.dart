import 'package:easyship/widgets/Sender/OfferCard_S.dart';
import 'package:easyship/widgets/Traveler/RequestCard_T.dart';
import 'package:easyship/widgets/Traveler/App_bar_T.dart';
import 'package:flutter/material.dart';

class OffersTab_S extends StatefulWidget {


  @override
  _OffersTab_SState createState() => _OffersTab_SState();
}

class _OffersTab_SState extends State<OffersTab_S> {
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
              indicatorColor: Colors.cyanAccent,
              labelColor: Colors.cyanAccent,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                    text: 'ALL OFFERS',
                    icon: Icon(Icons.auto_awesome_motion)),
                Tab(text: 'MY OFFERS', icon: Icon(Icons.bookmarks_rounded)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              OfferCard_S(),
              OfferCard_S(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: const Icon(Icons.add,),
            backgroundColor: Colors.cyanAccent[100],
          ),
        ),
      ),
    );
  }
}
