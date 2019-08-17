import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ask me anything 🎱',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int answerNumber = 1;

  void getAnswer() {
    setState(() {
      answerNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          splashColor: Colors.white,
          highlightColor: Colors.white,
          onPressed: getAnswer,
          child: Image(
            image: AssetImage('images/ball$answerNumber.png'),
          ),
        ),
      ),
    );
  }
}
