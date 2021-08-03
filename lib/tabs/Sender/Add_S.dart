import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Add_S extends StatefulWidget {
  @override
  _Add_SState createState() => _Add_SState();
}

class _Add_SState extends State<Add_S> with SingleTickerProviderStateMixin {
  DateTime _Traveldate;
  DateTime _Arrivalldate;
  DateTime _Expirationdate;

  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  String Departure_country = "Select Country";
  String Departure_city = "Select City";
  String Arrival_country = "Select Country";
  String Arrival_city = "Select City";
  String Relay_points = "Pick up point";
  String Package = "Type";

  TabController tabControllerr;

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

  void initState() {
    tabControllerr = TabController(length: 4, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Theme(
        data: ThemeData(
            primaryColor: Colors.cyanAccent[700],
            colorScheme: ColorScheme.light(
              primary: Colors.cyanAccent[700],
            )),
        child: Stepper(
          type: stepperType,
          currentStep: _currentStep,
          onStepTapped: (step) => tapped(step),
          onStepContinue: continued,
          onStepCancel: cancel,
          steps: <Step>[
            Step(
              subtitle: _currentStep == 0
                  ? Icon(
                      Icons.airplanemode_on,
                      color: Colors.cyanAccent[700],
                    )
                  : null,
              title: Text(
                "TRAVEL",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.cyanAccent[700],
                ),
              ),
              content: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Center(
                              child: Text(
                        "Departure",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.cyanAccent[700],
                        ),
                      ))),
                    ],
                  ),
                  Divider(),
                  Divider(),
                  Icon(Icons.flight_takeoff_rounded),
                  DropdownButton<String>(
                    underline: Divider(
                      color: Colors.white,
                    ),
                    isExpanded: true,
                    hint: TextFormField(
                      decoration: InputDecoration(labelText: Departure_country),
                    ),
                    items: <String>['France', 'Tunisia'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String newValue) {
                      setState(() {
                        Departure_country = newValue;
                      });
                    },
                  ),
                  DropdownButton<String>(
                    underline: Divider(
                      color: Colors.white,
                    ),
                    isExpanded: true,
                    hint: TextFormField(
                      decoration: InputDecoration(labelText: Departure_city),
                    ),
                    items: <String>['Paris', 'Tunis'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String newValue) {
                      setState(() {
                        Departure_city = newValue;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Divider(),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Center(
                              child: Text(
                        "Arrival",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.cyanAccent[700],
                        ),
                      ))),
                    ],
                  ),
                  Divider(),
                  Divider(),
                  Icon(Icons.flight_land),
                  DropdownButton<String>(
                    underline: Divider(
                      color: Colors.white,
                    ),
                    isExpanded: true,
                    hint: TextFormField(
                      decoration: InputDecoration(labelText: Arrival_country),
                    ),
                    items: <String>['France', 'Tunisia'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String newValue) {
                      setState(() {
                        Arrival_country = newValue;
                      });
                    },
                  ),
                  DropdownButton<String>(
                    underline: Divider(
                      color: Colors.white,
                    ),
                    isExpanded: true,
                    hint: TextFormField(
                      decoration: InputDecoration(labelText: Arrival_city),
                    ),
                    items: <String>['Paris', 'Tunis'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String newValue) {
                      setState(() {
                        Arrival_city = newValue;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Divider(),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Center(
                              child: Text(
                        "Request Expiration Date",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.cyanAccent[700],
                        ),
                      ))),
                    ],
                  ),
                  Divider(),
                  Divider(),
                  Icon(Icons.timer_rounded),
                  Text(_Expirationdate == null
                      ? ''
                      : '${_Expirationdate.day.toString()}/${_Expirationdate.month.toString()}/${_Expirationdate.year.toString()}'),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyanAccent[700],
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    child: Text('Pick Date'),
                    onPressed: () {
                      showDatePicker(
                        builder: (BuildContext context, Widget child) {
                          return Theme(
                            data: ThemeData.dark(),
                            // This will change to light theme.
                            child: child,
                          ); //Background color
                        },
                        context: context,
                        initialDate: _Expirationdate == null
                            ? DateTime.now()
                            : _Expirationdate,
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2030),
                      ).then((date) {
                        setState(() {
                          _Expirationdate = date;
                        });
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Divider(),
                  ),
                  Divider(),
                  SizedBox(
                    height: 15.0,
                  )
                ],
              ),
              isActive: _currentStep >= 0,
              state:
                  _currentStep >= 0 ? StepState.complete : StepState.disabled,
            ),
            Step(
              subtitle: _currentStep == 1
                  ? Icon(
                      Icons.forward_to_inbox,
                      color: Colors.cyanAccent[700],
                    )
                  : null,
              title: Text(
                "PACKAGE",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.cyanAccent[700],
                ),
              ),
              content: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Center(
                              child: Text(
                        "PACKAGE",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.cyanAccent[700],
                        ),
                      ))),
                    ],
                  ),
                  Divider(),
                  Divider(),
                  DropdownButton<String>(
                    underline: Divider(
                      color: Colors.white,
                    ),
                    isExpanded: true,
                    hint: TextFormField(
                      decoration: InputDecoration(labelText: Package),
                    ),
                    items: <String>['letter', 'box'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String newValue) {
                      setState(() {
                        Package = newValue;
                      });
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Weight (kg)'),
                  ),
                  SizedBox(height: 10.0),
                  Divider(),
                  Text("Dimensions (m)"),
                  Divider(),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'width'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Height'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Length'),
                  ),
                  SizedBox(height: 10.0),
                  Divider(),
                  Text("Add image"),
                  Divider(),
                  SizedBox(height: 10.0),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(Icons.add_a_photo_outlined),
                        Container(
                          margin: EdgeInsets.only(top: 20.0, bottom: 25.0),
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: _image != null
                                    ? FileImage(_image)
                                    : AssetImage('assets/images/avatar.png'),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                          ),
                        ),
                      ],
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
                  )
                ],
              ),
              isActive: _currentStep >= 1,
              state:
                  _currentStep >= 1 ? StepState.complete : StepState.disabled,
            ),
            Step(
              subtitle: _currentStep == 2
                  ? Icon(
                      Icons.done_all,
                      color: Colors.cyanAccent[700],
                    )
                  : null,
              title: Text(
                "CONFIRM",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.cyanAccent[700],
                ),
              ),
              content: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Center(
                              child: Text(
                        "CONFIRM",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.cyanAccent[700],
                        ),
                      ))),
                    ],
                  ),
                  Divider(),
                  Divider(),
                  Card(
                      elevation: 2.0,
                      // margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 50.0,
                              child: Container(
                                color: Colors.cyanAccent[700],
                                child: Center(
                                  child: Text(
                                    "Request information",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Center(
                                child: Text(
                                  "Added on 25/07/2021 \n Expires on 27/07/2021",
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("From:Tunis"),
                                Icon(Icons.arrow_forward),
                                Text("To: Paris"),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Text("Package details"),
                            SizedBox(height: 12.0),

                            Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("       Width: "),
                                Text("0.5 m"),
                              ],
                            ),
                            SizedBox(height: 5.0),

                            Row(
                              //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("       Height: "),
                                Text("1.2 m"),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("       Length: "),
                                Text("0.5 m"),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Text("Image"),
                            Container(
                              margin: EdgeInsets.only(top: 20.0, bottom: 25.0),
                              width: 200.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: _image != null
                                        ? FileImage(_image)
                                        : AssetImage('assets/images/avatar.png'),
                                    fit: BoxFit.cover),
                                borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
              isActive: _currentStep >= 2,
              state:
                  _currentStep >= 3 ? StepState.complete : StepState.disabled,
            ),
          ],
        ),
      ),
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
