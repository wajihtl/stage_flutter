import 'package:easyship/tabs/Sender/Chat_S.dart';
import 'package:flutter/material.dart';

import 'SingUpPage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailControl = new TextEditingController();
  TextEditingController _passwordControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[100],
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration:
                    InputDecoration(labelText: 'Email', errorText: null),
                controller: _emailControl,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(labelText: 'Password'),
                controller: _passwordControl,
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(15),
                color: Colors.cyanAccent[100],
                textColor: Colors.white,
                onPressed: () {

                },
              ),
            ),
            FlatButton(
              child: Text("Create account"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
