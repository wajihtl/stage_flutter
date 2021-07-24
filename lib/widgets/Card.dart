import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

Widget quoteTemplate() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Card(
            elevation: 30.0,
            margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    " 1.text,",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.purple[700],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    " 2.text,",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[800],
                    ),
                  ),
                  Text(
                    " 3.text,",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            )),
      ],
    ),
  );
}

/*

@override
Widget quoteTemplate() {
  final List<String> titles = [
    "",
    "YELLOW",
    "BLACK",
    "CYAN",
    "BLUE",
    "GREY",
  ];

  final List<Widget> images = [
    Container(
      child: Card(
          elevation: 30.0,
          //  margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  " 1.text,",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.purple[700],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  " 2.text,",
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  " 3.text,",
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          )),
    ),
    Card(
      elevation: 30.0,
      // margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.cyan,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.grey,
    ),
  ];
  return Scaffold(
    body: SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: VerticalCardPager(
                  titles: titles,
                  // required
                  images: images,
                  // required
                  textStyle: TextStyle(color: Colors.blue, fontSize: 2.0),
                  // optional
                  onPageChanged: (page) {
                    // optional
                  },
                  onSelectedItem: (index) {
                    print(index);
                    // optional
                  },
                  initialPage: 0,
                  // optional
                  align: ALIGN.CENTER // optional
                  ),
            ),
          ),
        ],
      ),
    ),
  );
}
*/
