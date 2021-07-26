import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget OfferCard_S() {
  return ListView(
      shrinkWrap: true,
      children:  List.generate(3, (i) =>
          Card(
              elevation: 2.0,
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        Expanded(child: Center(child: Text(" Tunis, Tunisia-Paris, France", style: TextStyle(fontSize: 18.0, color: Colors.cyanAccent[200],),))),
                        Icon(Icons.airplanemode_on)
                      ],
                    ),
                    Divider(color: Colors.grey,),
                    Text(" Departure:05/07/2021 11:22", style: TextStyle(fontSize: 14.0, color: Colors.grey[800])),
                    SizedBox(height: 5.0,),
                    Text(" Arrival.06/07/2021 13:00", style: TextStyle(fontSize: 14.0, color: Colors.grey[800])),
                  ],
                ),
              ))));
}

