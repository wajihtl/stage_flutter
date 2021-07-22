import 'package:flutter/material.dart';
import '../model/slide.dart';

class scnd_screen extends StatelessWidget {
  static const routeName = '/scnd_screen';

  @override
  Widget build(BuildContext context) {
    double h  = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              print('test');
              Navigator.pop(context);
            },
            child: Column(
              children: [
                FadeInImage.assetNetwork(
                  fit: BoxFit.contain,
                  placeholder: 'assets/images/transporter.png',
                  image: 'assets/images/customer.png',

                ),
              ],
            ),

          ),

          GestureDetector(
            onTap: () {
              print('hello');
            },
            child: Column(
              children: [
                FadeInImage.assetNetwork(
                  fit: BoxFit.contain,
                  placeholder: 'assets/images/customer.png',
                  image: 'assets/images/customer.png',
                ),
              ],
            ),
          ),
        ],
      ),


    );
  }
}
