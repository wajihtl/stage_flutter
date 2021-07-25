import 'package:easyship/widgets/ChatCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:photo_view/photo_view.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          return ChatCard();
        },
      ),
    );
  }
}
