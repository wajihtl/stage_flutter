import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _emailControl = new TextEditingController();
  TextEditingController _passwordControl = new TextEditingController();

  bool _isLoading = false;
  String _errMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN UP '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(errorText: null),
                controller: _emailControl,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: _passwordControl,
                obscureText: true,
              ),
            ),
            _isLoading == false
                ? ElevatedButton(
                    onPressed: () {
                      // create account firebase
                    },
                    child: Text('CREATE ACCOUNT'),
                  )
                : CircularProgressIndicator(),
            _errMessage == ""
                ? Container()
                : Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(20),
                    color: Colors.red.shade700,
                    child: Text(
                      _errMessage,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
            FlatButton(
              child: Text("Create account"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
