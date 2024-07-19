import 'dart:math';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int diceNumber1 = 1;
  int diceNumber2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      diceNumber1 = Random().nextInt(6) + 1;
                      diceNumber2 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$diceNumber1.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      diceNumber1 = Random().nextInt(6) + 1;
                      diceNumber2 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$diceNumber2.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
