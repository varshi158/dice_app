import "package:flutter/material.dart";
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  // added bc of code seperation although stateful widget by def means changeable
  // state object(below class changes), this widget class remains constant
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // execute the constructor function of DICEROLLERSTATE
    return _DiceRollerState();
  }
}

// state class - only used internally within this widget class
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(
      () {
        currentDiceRoll = randomizer.nextInt(6) + 1; // numbers within 1-6
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
