import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  int active = 6;
  List<String> diceImage = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Dice-1.svg/2048px-Dice-1.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Dice-2.svg/557px-Dice-2.svg.png',
    'https://www.clipartmax.com/png/small/254-2542653_this-image-rendered-as-png-in-other-widths-dice-2-png.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Dice-4.svg/557px-Dice-4.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Dice-5.svg/1024px-Dice-5.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Dice-6E.png/120px-Dice-6E.png',
    'https://clipart-library.com/images/qcBX8Xp8i.gif'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.red,
              Colors.yellow,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Mr. Patrick\'s dice',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.network(
                diceImage[active],
                //color: const Color.fromARGB(255, 3, 140, 252),
                width: 500,
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {
                  var ranNum = Random().nextInt(6);
                  setState(() {
                    active = ranNum;
                  });
                },
                child: const Text(
                  'ROLL IT TOMAS!',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
