import 'dart:math';
import 'package:flutter/material.dart';

// defining a variable inside stateless/stateful widget is best choice when it is only created once
// this will not re-executed everytime the state obj is created
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  int currentDiceRoll = 2;

  void rollDice () {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          // this will display widgets of a column to center vertically
          // mainAxisAlignment: MainAxisAlignment.center,
          // other way to center vertically
          mainAxisSize: MainAxisSize.min,

          // crossAxisAlignment this is to define place of the widgets to display horizontally

          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png', 
              width: 200
            ),

            // types of buttons are:
              // 1. ElevatedButton this has a bg color and a shadow
              // 2. OutlineButton this has only border
              // 3. TextButton this is only pressable text

            const SizedBox(height: 20,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28
                )
              ),
              child: const Text('Roll Dice')
            )
          ]
        );
  }
}