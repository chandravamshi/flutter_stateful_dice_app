import 'package:flutter/material.dart';

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
  int leftimage = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(children: [
      Expanded(
          child: TextButton(
        onPressed: () {
          setState(() {
            leftimage = 3;
          });
        },
        child: Image.asset('images/dice$leftimage.png'),
      )),
      Expanded(
          child: TextButton(
              onPressed: () {}, child: Image.asset('images/dice2.png'))),
    ]));
  }
}
