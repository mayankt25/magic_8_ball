import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: const Center(child: Text('Ask Me Anything')),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void changeImage(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
          onPressed: changeImage,
          child: Center(
              child: Image.asset('images/ball$ballNumber.png'),
          ),
      ),
    );
  }
}

