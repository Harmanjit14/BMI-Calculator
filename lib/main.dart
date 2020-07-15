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
                  //fontWeight: FontWeight.bold,
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
                  //fontWeight: FontWeight.bold,
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

class MainBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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

class BmiCal extends StatefulWidget {
  @override
  _BmiCalState createState() => _BmiCalState();
}

class _BmiCalState extends State<BmiCal> {
  Color inactive = Colors.grey[800];
  Color active = Colors.grey[900];
  Color finWidM = Colors.grey[800];
  Color finWidF = Colors.grey[800];
  int male = 0;
  int female = 0;

  void updatecol(int x) {
    if (x == 1) {
      if (finWidM == inactive) {
        finWidM = active;
        finWidF = inactive;
      } else {
        finWidM = inactive;
        finWidF = inactive;
      }
    } else if (x == 0) {
      if (finWidF == inactive) {
        finWidF = active;
        finWidM = inactive;
      } else {
        finWidF = inactive;
        finWidM = inactive;
      }
    }
  }

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
                    onTap: () {
                      setState(() {
                        updatecol(1);
                      });
                    },
                    child: MaleWid(
                      boxCol: finWidM,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updatecol(0);
                      });
                    },
                    child: FemaleWid(
                      boxCol: finWidF,
                    ),
                  ),
                ),
              ],
            ),
            MainBox(),
            Row(
              children: <Widget>[
                MaleWid(boxCol: inactive),
                FemaleWid(
                  boxCol: inactive,
                ),
              ],
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: null,
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  width: double.infinity,
                  height: 70,
                  color: Colors.teal[600],
                  child: Center(
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
