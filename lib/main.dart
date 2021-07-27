import 'package:easyship/screens/scnd_screen.dart';
import 'package:flutter/material.dart';


import './screens/getting_started_screen.dart';
import './screens/scnd_screen.dart';

void main() {
    runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EASYSHIP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GettingStartedScreen(),
    );
  }

}
