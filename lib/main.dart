import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Flip'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  // const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void changeDice() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}