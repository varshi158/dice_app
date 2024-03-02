import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';

//import 'package:dice_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // constructor function
  const GradientContainer(this.color1, this.color2, {super.key});

  // setting pre-defined values
  const GradientContainer.purple()
      : color1 = Colors.deepPurple,
        color2 = Colors.deepPurpleAccent;

  final Color color1;
  final Color color2;

  // overriding build method
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        //child: StyledText("hello yall"),
        child: DiceRoller(),
      ),
    );
  }
}
