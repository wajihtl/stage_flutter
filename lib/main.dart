import 'package:easyship/screens/scnd_screen.dart';
import 'package:flutter/material.dart';


import './screens/getting_started_screen.dart';
import './screens/scnd_screen.dart';

void main() {
    runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EASYSHIP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GettingStartedScreen(),
      routes: {
        scnd_screen.routeName: (ctx) => scnd_screen(),

      },

    );
  }
}
