import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
  File _image;
  List<File> _pickedIamages = [];

  String _dropdownValue = "Country";
  bool agree = false;

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[100],
        // automaticallyImplyLeading: false,
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Theme(
                  data: ThemeData(
                      primaryColor: Colors.cyanAccent[100],
                      colorScheme:
                          ColorScheme.light(primary: Colors.cyanAccent[100])),
                  child: Stepper(
                    type: stepperType,
                    physics: ScrollPhysics(),
                    currentStep: _currentStep,
                    onStepTapped: (step) => tapped(step),
                    onStepContinue: continued,
                    onStepCancel: cancel,
                    controlsBuilder: (BuildContext context,
                        {VoidCallback onStepContinue,
                        VoidCallback onStepCancel}) {
                      return stepperType == StepperType.vertical
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        primary: Colors.white,
                                        backgroundColor: agree ?
                                            Colors.cyanAccent[100] : Colors.grey[350]),
                                    onPressed: agree ? onStepContinue : null,
                                    child: Text('NEXT'),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.redAccent[200]),
                                  onPressed: onStepCancel,
                                  child: Text('CANCEL'),
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                TextButton(
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: agree ?
                                      Colors.cyanAccent[100] : Colors.grey[350]),
                                  onPressed: agree ? onStepContinue : null,
                                  child: Text('NEXT'),
                                ),
                                SizedBox(width: 10.0),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.redAccent[200]),
                                  onPressed: onStepCancel,
                                  child: Text('CANCEL'),
                                ),
                              ],
                            );
                    },
                    steps: <Step>[
                      Step(
                        title: new Text('Account'),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'First Name'),
                            ),
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Last Name'),
                            ),
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Username'),
                            ),
                            TextFormField(
                              decoration: InputDecoration(labelText: 'E-mail'),
                            ),
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Phone Number'),
                            ),
                            DropdownButton<String>(
                              underline: Divider(
                                color: Colors.white,
                              ),
                              isExpanded: true,
                              hint: TextFormField(
                                decoration:
                                    InputDecoration(labelText: _dropdownValue),
                              ),
                              items: <String>['France', 'Tunis']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  _dropdownValue = newValue;
                                });
                              },
                            ),
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Password'),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Confirm password'),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: agree,
                                  onChanged: (value) {
                                    setState(() {
                                      agree = value;
                                    });
                                  },
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 30.0, bottom: 30.0),
                                  width: 200.0,
                                  child: Text(
                                    'I have read and accept terms and conditions.',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep == 0
                            ? StepState.editing
                            : StepState.complete,


                      ),
                      Step(
                        title: new Text('Photo'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                margin:
                                    EdgeInsets.only(top: 20.0, bottom: 25.0),
                                width: 200.0,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: _image != null
                                          ? FileImage(_image)
                                          : AssetImage(
                                              'assets/images/avatar.png'),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100.0)),
                                ),
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
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep == 1
                            ? StepState.editing
                            : StepState.disabled,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyanAccent[100],
        child: Icon(Icons.crop_rotate),
        onPressed: switchStepsType,
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 1 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep == 0
        ? Navigator.pop(context)
        : setState(() => _currentStep -= 1);
    // _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
