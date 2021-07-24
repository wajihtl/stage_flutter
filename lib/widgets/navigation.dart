import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:easyship/tabs/Profile.dart';
import 'package:flutter/material.dart';
import '../tabs/Requests.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  String title = 'hi';
  static List<Widget> _widgetOptions = <Widget>[
    Requests(),
    Center(child: Text('chat Screen')),
    Center(child: Text('notifs Screen')),
    //ProfileTab(),
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
          title = 'HOME';
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
      drawer: drawer(),
      appBar: appBar(title),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: Colors.purpleAccent[700],
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.article, size: 30),
          Icon(Icons.chat_bubble_rounded, size: 30),
          Icon(Icons.notifications, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          _selectedIndex = index;
          _onItemTapped(index);
          _changeTitle(index);
        },
      ),

      // ################ nawa3 akher taa bottom bar ################"
      /* bottomNavigationBar: SizedBox(
        height: 100.0,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.globe),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              title: Text(''),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.pink[400],
          selectedFontSize: 0.0,
          unselectedFontSize: 0.0,
          iconSize: 30.0,
          elevation: 0.0,
          backgroundColor: Colors.grey[850],
        ),
       ), */
    );
  }
}
