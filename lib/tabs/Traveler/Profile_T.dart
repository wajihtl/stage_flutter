import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileTab_T extends StatefulWidget {
  ProfileTab_T({Key key}) : super(key: key);

  @override
  _ProfileTab_TState createState() => _ProfileTab_TState();
}

class _ProfileTab_TState extends State<ProfileTab_T> {
  File _image;
  List<File> _pickedIamages = [];

  final picker = ImagePicker();

  Future getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);

        setState(() {
          _pickedIamages.add(File(pickedFile.path));
        });
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: _image != null
                        ? FileImage(_image)
                        : NetworkImage(
                            "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png"),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext bc) {
                          return Container(
                            child: new Wrap(
                              children: <Widget>[
                                new ListTile(
                                    leading: new Icon(Icons.camera),
                                    title: new Text('Camera'),
                                    onTap: () {
                                      getImage(ImageSource.camera);
                                      Navigator.pop(context);
                                    }),
                                new ListTile(
                                  leading: new Icon(Icons.image),
                                  title: new Text('Gallery'),
                                  onTap: () {
                                    getImage(ImageSource.gallery);
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        });
                  },
                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("John Dow"),
                    SizedBox(height: 4,),
                    Text("john-dow@gmail.com"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15,),
            Divider(height: 15,),
            SizedBox(height: 25,),
            FlatButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0x8AF5F6F9),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.edit),
                  SizedBox(width: 20),
                  Expanded(child: Text("Edit profile")),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0x8AF5F6F9),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 20),
                  Expanded(child: Text("Payment settings")),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0x8AF5F6F9),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 20),
                  Expanded(child: Text("text")),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color:Colors.purple[700],
                onPressed: () {},
                child: Text('Déconnexion', style: TextStyle(color: Colors.white,fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
