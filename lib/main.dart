import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(title: Text('Dice'), backgroundColor: Colors.red),
          body: DicePage()),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftimage = 1;
  int rightimage = 1;
  void changeDiceFace() {
    setState(() {
      rightimage = Random().nextInt(6) + 1;
      leftimage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(children: [
      Expanded(
          child: TextButton(
        onPressed: () {
           changeDiceFace();
        },
        child: Image.asset('images/dice$leftimage.png'),
      )),
      Expanded(
          child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightimage.png'))),
    ]));
  }
}
