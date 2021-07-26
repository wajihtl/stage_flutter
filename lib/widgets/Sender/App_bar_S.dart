import 'package:flutter/material.dart';

Widget appBar_S(title) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.cyanAccent[100],
    title: Center(
      child: Text(
        title,
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