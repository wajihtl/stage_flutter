import 'dart:ui';

import 'package:flutter/material.dart';
import '../model/slide.dart';

class scnd_screen extends StatelessWidget {
  static const routeName = '/scnd_screen';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print('test');
              Navigator.pop(context);
            },
            child: Container(
              height: MediaQuery.of(context).size.height*0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/customer.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              print('hello');
            },
            child: Container(
              height: MediaQuery.of(context).size.height*0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/customer.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}
