import 'package:flutter/material.dart';
import 'package:bmi_calculator/Second/second.dart';
import 'First/first.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      routes: {
        '/first': (context) => FirstRoute(),
        '/second': (context) => SecondRoute()
      },
      theme: ThemeData.dark(),
      initialRoute: '/first',
    );
  }
}
