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

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(children: [
      Expanded(
          child: TextButton(
        onPressed: () {},
        child: Image.asset('images/dice1.png'),
      )),
      Expanded(
          child: TextButton(
              onPressed: () {}, child: Image.asset('images/dice2.png'))),
    ]));
  }
}
