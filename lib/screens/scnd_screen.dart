import 'package:easyship/widgets/navigation.dart';
import 'package:flutter/material.dart';

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
                    Text('VOYAGER',),
                    Text('GAGNER DE L\'ARGENT'),
                  ],
                ),

              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Navigation()),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/customer.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
