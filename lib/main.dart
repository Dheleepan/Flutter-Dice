import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent[400],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.redAccent[400],
        ),
        body: Dice(),
      ),
    ),
  );
}


class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftnumber = 1;
  int rightnumber = 1;

  void random(){
    setState(() {
      leftnumber = Random().nextInt(6)+1;
      rightnumber = Random().nextInt(6)+1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('left');
                random();
              },
              child: Image.asset('images/dice$leftnumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                random();
              },
              child: Image.asset('images/dice$rightnumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
