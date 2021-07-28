import 'package:easyship/widgets/Traveler/Navigation_T.dart';
import 'package:easyship/widgets/Sender/Navigation_S.dart';
import 'package:flutter/material.dart';

class scnd_screen extends StatelessWidget {
  // static const routeName = '/scnd_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Navigation_T()),
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/transporter.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('TRAVEL    ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontStyle: FontStyle.italic)),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('EARN MONEY    ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontStyle: FontStyle.italic)),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation_S()),),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/customer.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('SEND    ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontStyle: FontStyle.italic)),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('NEAR YOU    ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontStyle: FontStyle.italic)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
