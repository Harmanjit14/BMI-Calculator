import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainBox extends StatefulWidget {
  @override
  _MainBoxState createState() => _MainBoxState();
}

class _MainBoxState extends State<MainBox> {
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'HEIGHT',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  height.toString(),
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'cm',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Slider(
              value: height.toDouble(),
              onChanged: (double newVal) {
                setState(() {
                  height = newVal.toInt();
                });
              },
              min: 100,
              max: 250,
              activeColor: Colors.teal,
              inactiveColor: Colors.white,
            ),
          ],
        ),
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[800],
        ),
      ),
    );
  }
}

class MaleWid extends StatelessWidget {
  final Color boxCol;
  MaleWid({@required this.boxCol});
  @override
  Widget build(BuildContext context) {
    return Container(
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
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          )
        ],
      ),
      margin: EdgeInsets.fromLTRB(15, 15, 10, 15),
      height: 150,
      width: double.infinity,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: boxCol),
    );
  }
}

class FemaleWid extends StatelessWidget {
  final Color boxCol;
  FemaleWid({@required this.boxCol});
  @override
  Widget build(BuildContext context) {
    return Container(
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
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          )
        ],
      ),
      margin: EdgeInsets.fromLTRB(10, 15, 15, 15),
      height: 150,
      width: double.infinity,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: boxCol),
    );
  }
}
