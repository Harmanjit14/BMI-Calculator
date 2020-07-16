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

class MainBox extends StatefulWidget {
  @override
  _MainBoxState createState() => _MainBoxState();
}

class _MainBoxState extends State<MainBox> {
  int h = 180;
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
                  h.toString(),
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
              value: h.toDouble(),
              onChanged: (double newVal) {
                setState(() {
                  h = newVal.toInt();
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

class WeightBox extends StatefulWidget {
  @override
  _WeightBoxState createState() => _WeightBoxState();
}

class _WeightBoxState extends State<WeightBox> {
  int weight = 40;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WEIGHT',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  weight.toString(),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                SizedBox(width: 3),
                Text(
                  'kg',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  child: FloatingActionButton(
                    backgroundColor: Colors.teal[700],
                    onPressed: null,
                    child: Icon(
                      Icons.remove,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: FloatingActionButton(
                    backgroundColor: Colors.teal[700],
                    onPressed: null,
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        margin: EdgeInsets.fromLTRB(15, 15, 10, 15),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.grey[800]),
      ),
    );
  }
}

class AgeBox extends StatefulWidget {
  @override
  _AgeBoxState createState() => _AgeBoxState();
}

class _AgeBoxState extends State<AgeBox> {
  int age = 21;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'AGE',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  age.toString(),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  child: FloatingActionButton(
                    backgroundColor: Colors.teal[700],
                    onPressed: null,
                    child: Icon(
                      Icons.remove,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: FloatingActionButton(
                    backgroundColor: Colors.teal[700],
                    onPressed: null,
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        margin: EdgeInsets.fromLTRB(15, 15, 10, 15),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.grey[800]),
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
                WeightBox(),
                AgeBox(),
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
