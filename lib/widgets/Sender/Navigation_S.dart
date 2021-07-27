import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:easyship/tabs/Sender/Chat_S.dart';
import 'package:easyship/tabs/Sender/Notifs_S.dart';
import 'package:easyship/tabs/Sender/Offers_S.dart';
import 'package:easyship/tabs/Sender/Profile_S.dart';
import 'package:easyship/tabs/Sender/Profile_loggedOut_S.dart';
import 'package:flutter/material.dart';
import 'App_bar_S.dart';
import 'Drawer_S.dart';

class Navigation_S extends StatefulWidget {

  final bool checkType;

  Navigation_S({Key key, this.checkType}) : super(key: key);

  @override
  _Navigation_SState createState() => _Navigation_SState();
}

class _Navigation_SState extends State<Navigation_S> {
  int _selectedIndex = 0;
  String title = 'OFFERS';
  String user='Sender';
  static List<Widget> _widgetOptions = <Widget>[
    OffersTab_S(),
    ChatTab_S(),
    NotifsTab_S(),
    Profile_loggedOut_S()
   // ProfileTab_S(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _changeTitle(int index) {
    switch (index) {
      case 0:
        setState(() {
          widget.checkType? title = 'OFFERS' : title = 'Test';
        });
        break;
      case 1:
        setState(() {
          title = 'CHAT';
        });
        break;

      case 2:
        setState(() {
          title = 'NOTIFICATIONS';
        });
        break;
      case 3:
        setState(() {
          title = 'PROFILE';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer_S(),
      appBar: appBar_S(title),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: Colors.cyanAccent[100],
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.airplanemode_active, color: Colors.white, size: 30),
          Icon(
            Icons.chat_bubble_outline_outlined,
            color: Colors.white,
            size: 30,
          ),
          Icon(Icons.notifications_none_outlined,
              color: Colors.white, size: 30),
          Icon(Icons.person_outline_outlined, color: Colors.white, size: 30),
        ],
        onTap: (index) {
          _selectedIndex = index;
          _onItemTapped(index);
          _changeTitle(index);
        },
      ),
    );
  }
}
