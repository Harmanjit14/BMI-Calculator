import 'package:flutter/material.dart';

class AgeBox extends StatefulWidget {
  @override
  _AgeBoxState createState() => _AgeBoxState();
}

class _AgeBoxState extends State<AgeBox> {
  Key but1, but2;
  int age = 21;
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                    heroTag: null,
                    key: but1,
                    backgroundColor: Colors.teal[700],
                    onPressed: () {
                      setState(() {
                        age--;
                      });
                    },
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
                    heroTag: null,
                    key: but2,
                    backgroundColor: Colors.teal[700],
                    onPressed: () {
                      setState(() {
                        age++;
                      });
                    },
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

class WeightBox extends StatefulWidget {
  @override
  _WeightBoxState createState() => _WeightBoxState();
}

class _WeightBoxState extends State<WeightBox> {
  Key but2, but1;
  int weight = 40;
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                    heroTag: null,
                    key: but2,
                    backgroundColor: Colors.teal[700],
                    onPressed: () {
                      setState(() {
                        weight--;
                      });
                    },
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
                    key: but1,
                    heroTag: null,
                    backgroundColor: Colors.teal[700],
                    onPressed: () {
                      setState(() {
                        weight++;
                      });
                    },
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
