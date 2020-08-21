import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOVE CALCULATOR',
      home: MyCalculator(),
    );
  }
}

class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  int score;
  void loveScore() {
    setState(() {
      score = Random().nextInt(40) + 40;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOVE CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Enter your name'),
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter your partner\'s name'),
          ),
          RaisedButton(
            onPressed: () {
              loveScore();
            },
            child: Text('Calculate'),
            color: Colors.blue,
          ),
          Text(
            'Your Score is : $score',
          )
        ],
      ),
    );
  }
}
