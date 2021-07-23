import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.purpleAccent[700],
    title: Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Text(
          'EASYSHIP',
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.search_sharp,
        ),
        onPressed: () => {},
      ),

    ],
  );
}