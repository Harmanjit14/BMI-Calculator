import 'package:flutter/material.dart';

import 'first_MainBox.dart';
import 'first_BottomBoxes.dart';
import 'Button.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColectorFirst(),
    );
  }
}

class ColectorFirst extends StatefulWidget {
  @override
  _ColectorFirstState createState() => _ColectorFirstState();
}

class _ColectorFirstState extends State<ColectorFirst> {
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
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          SubmitBut(),
        ],
      ),
    );
  }
}
