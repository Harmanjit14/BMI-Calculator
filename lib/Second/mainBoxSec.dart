import 'package:bmi_calculator/database.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainBoxSecond extends StatefulWidget {
  @override
  _MainBoxSecondState createState() => _MainBoxSecondState();
}

class _MainBoxSecondState extends State<MainBoxSecond> {
  List<Icon> genIcon = [
    Icon(
      FontAwesomeIcons.female,
      color: Colors.white,
      size: 150,
    ),
    Icon(
      FontAwesomeIcons.male,
      color: Colors.white,
      size: 150,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'YOUR RESULT',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey[800],
        ),
      ),
    );
  }
}

class ResetButton extends StatefulWidget {
  @override
  _ResetButtonState createState() => _ResetButtonState();
}

class _ResetButtonState extends State<ResetButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 20,
        width: double.infinity,
        color: Colors.teal[700],
        child: FlatButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            Navigator.pushNamed(context, '/first');
          },
          child: Text(
            'RESET',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
