import 'package:flutter/material.dart';

class MainBoxSecond extends StatefulWidget {
  @override
  _MainBoxSecondState createState() => _MainBoxSecondState();
}

class _MainBoxSecondState extends State<MainBoxSecond> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Container(
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
