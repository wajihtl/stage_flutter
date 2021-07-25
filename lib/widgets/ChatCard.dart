import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ChatCard() {
  return Container(
    height: 100.0,
    child: GestureDetector(
      onTap: () {
        print('index');
      },
      child: Card(
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/slider1.png'),
                            fit: BoxFit.cover),
                        borderRadius:
                            BorderRadius.all(Radius.circular(75.0)),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: [
                          Text('@anonymous'),
                          Divider(),
                          Text("message"),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Text('time'),
                  ),
                ],
              ),
            ),
    ),
  );
}

