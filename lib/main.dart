import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask Me Anyting'),
        ),
        body: Ball());
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int jawabanKamu = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          setState(() {
            jawabanKamu = Random().nextInt(5) + 1;
          });
        },
        child: Center(
          child: Image.asset('images/ball$jawabanKamu.png'),
        ),
      ),
    );
  }
}
