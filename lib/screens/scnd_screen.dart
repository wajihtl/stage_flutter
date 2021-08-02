import 'package:easyship/widgets/Traveler/Navigation_T.dart';
import 'package:easyship/widgets/Sender/Navigation_S.dart';
import 'package:flutter/material.dart';

class scnd_screen extends StatelessWidget {
  // static const routeName = '/scnd_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/easyship.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                child: Text(
                  'DÉMO',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(15),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () {

                },
              ),
              FlatButton(
                child: Text(
                  'DÉMO',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(15),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () {

                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
