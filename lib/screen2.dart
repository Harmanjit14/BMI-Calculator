import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Colector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MidBox(),
            SizedBox(
              height: 5,
            ),
            ResetBut(),
          ],
        ),
      ),
    );
  }
}

class MidBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.grey[800],
          ),
          width: 570,
          height: 570,
          child: null,
        ),
      ),
    );
  }
}

class ResetBut extends StatefulWidget {
  @override
  _ResetButState createState() => _ResetButState();
}

class _ResetButState extends State<ResetBut> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.teal,
        width: double.infinity,
        height: 30,
        child: FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'RESET',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
