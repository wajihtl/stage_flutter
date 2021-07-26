import 'package:flutter/material.dart';

Widget appBar_T(title) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.purpleAccent[700],
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