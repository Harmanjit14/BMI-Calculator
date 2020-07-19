import 'package:bmi_calculator/database.dart';
import 'package:flutter/material.dart';

class SubmitBut extends StatefulWidget {
  @override
  _SubmitButState createState() => _SubmitButState();
}

class _SubmitButState extends State<SubmitBut> {
  Key main;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      key: main,
      padding: EdgeInsets.all(0),
      onPressed: () {
        UserData obj;
        obj.calculate();
        Navigator.pushNamed(context, '/second');
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
        width: double.infinity,
        height: 70,
        color: Colors.teal[600],
        child: Center(
          child: Text(
            'SUBMIT',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
