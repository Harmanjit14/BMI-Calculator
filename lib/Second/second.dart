import 'package:flutter/material.dart';
import 'mainBoxSec.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CollectorSecond(),
      ),
    );
  }
}

class CollectorSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          MainBoxSecond(),
          ResetButton(),
        ],
      ),
    );
  }
}
