import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class MaleWid extends StatelessWidget {
  final Color boxCol;
  MaleWid({@required this.boxCol});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.mars,
              size: 100,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'MALE',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
        margin: EdgeInsets.fromLTRB(15, 15, 10, 15),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: boxCol),
      ),
    );
  }
}

class FemaleWid extends StatelessWidget {
  final Color boxCol;
  FemaleWid({@required this.boxCol});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.venus,
              size: 100,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'FEMALE',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
        margin: EdgeInsets.fromLTRB(10, 15, 15, 15),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: boxCol),
      ),
    );
  }
}

class BmiCal extends StatefulWidget {
  @override
  _BmiCalState createState() => _BmiCalState();
}

class _BmiCalState extends State<BmiCal> {
  Color inactive = Colors.grey[800];
  Color active = Colors.grey[900];
  int male = 0;
  int female = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: null,
                    child: MaleWid(
                      boxCol: inactive,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: null,
                    child: FemaleWid(
                      boxCol: active,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
