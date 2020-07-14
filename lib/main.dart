import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: BmiCal(),
    );
  }
}

class BmiCal extends StatefulWidget {
  @override
  _BmiCalState createState() => _BmiCalState();
}

class _BmiCalState extends State<BmiCal> {
  List<Widget> container1 = {
    Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: container1[0],
      ),
    );
  }
}
