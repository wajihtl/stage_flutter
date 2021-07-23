import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../screens/explore_screen.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Explore(),
    Center(child: Text('Home Screen')),
    Center(child: Text('Rewards Screen')),
    Center(child: Text('Profile Screen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: appBar(),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color:Colors.purpleAccent[700],
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.archive, size: 30),
          Icon(Icons.chat_rounded, size: 30),
          Icon(Icons.notifications, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          _selectedIndex = index;
          _onItemTapped(index);
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
