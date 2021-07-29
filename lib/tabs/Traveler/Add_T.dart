import 'package:flutter/material.dart';

import 'Requests_T.dart';

class Add_T extends StatefulWidget {
  @override
  _Add_TState createState() => _Add_TState();
}

class _Add_TState extends State<Add_T> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Theme(
        data: ThemeData(
            primaryColor: Colors.purpleAccent[700],
            colorScheme: ColorScheme.light(
              primary: Colors.purpleAccent[700],
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
                color: Colors.purpleAccent[700],
              )
                  : null,
              title: Text(
                "TRAVEL",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.purpleAccent[700],
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
                                "TRAVEL",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.purpleAccent[700],
                                ),
                              ))),
                    ],
                  ),
                  Divider(),
                  Divider(),
                  TextFormField(
                    decoration:
                    InputDecoration(labelText: 'Email Address'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                ],
              ),
              isActive: _currentStep >= 0,
              state: _currentStep >= 0
                  ? StepState.complete
                  : StepState.disabled,
            ),
            Step(
              subtitle: _currentStep == 1
                  ? Icon(
                Icons.add_box,
                color: Colors.purpleAccent[700],
              )
                  : null,
              title: Text(
                "PICKUP",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.purpleAccent[700],
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
                                "PICKUP",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.purpleAccent[700],
                                ),
                              ))),
                    ],
                  ),
                  Divider(),
                  Divider(),
                  TextFormField(
                    decoration:
                    InputDecoration(labelText: 'Home Address'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Postcode'),
                  ),
                ],
              ),
              isActive: _currentStep >= 0,
              state: _currentStep >= 1
                  ? StepState.complete
                  : StepState.disabled,
            ),
            Step(
              subtitle: _currentStep == 2
                  ? Icon(Icons.check_box,
                  color: Colors.purpleAccent[700])
                  : null,
              title: Text(
                "DELIVERY",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.purpleAccent[700],
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
                                "DELIVERY",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.purpleAccent[700],
                                ),
                              ))),
                    ],
                  ),
                  Divider(),
                  Divider(),
                  TextFormField(
                    decoration:
                    InputDecoration(labelText: 'Mobile Number'),
                  ),
                ],
              ),
              isActive: _currentStep >= 0,
              state: _currentStep >= 2
                  ? StepState.complete
                  : StepState.disabled,
            ),
            Step(
              subtitle: _currentStep == 3
                  ? Icon(Icons.done_all,
                  color: Colors.purpleAccent[700])
                  : null,
              title: Text(
                "CONFIRM",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.purpleAccent[700],
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
                                  color: Colors.purpleAccent[700],
                                ),
                              ))),
                    ],
                  ),
                  Divider(),
                  Divider(),
                  TextFormField(
                    decoration:
                    InputDecoration(labelText: 'Email Address'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                ],
              ),
              isActive: _currentStep >= 0,
              state: _currentStep >= 3
                  ? StepState.complete
                  : StepState.disabled,
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
    _currentStep < 3 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}