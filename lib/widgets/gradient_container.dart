import 'package:flutter/material.dart';
import 'package:rolla_dice/widgets/roll_dice.dart';
// import 'package:rolla_dice/widgets/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// above variables can be written like this
// Alignment? startAlignment;
// Alignment? endAlignment; 
// question mark after a data type lets the variable to be null at the beginning

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    // 2nd approach
    this.color1, 
    this.color2, 
    {
      super.key, 
      // 1st approach: this is named one approach where the variable colors is defined inside the curly braces
      // required this.colors // 'required' keyword is required with this scenario named variable
    }
  );

  // 2nd approach: 
  final Color color1;
  final Color color2;

  // 1st approach
  // final List<Color> colors;

  // build function should return a widget
  @override
  Widget build(context) {
    // Container is very useful for configuring styling and layout settings
    return Container(
      decoration: BoxDecoration(
        // this will set a gradient bg color
        gradient: LinearGradient(
          // 1st approach
          // colors: colors, // this is a list of array colors

          // 2nd approach
          colors: [
            color1, 
            color2
          ],
          // gradient bg starts with topleft
          begin: startAlignment,
          // gradient bg ends with bottomright
          end: endAlignment
        ),
      ),
      child: const Center(
        // this is how to call images from assets folder
        // make sure to config your assets images from pubspec yaml
        // calling stateful widget
        child: DiceRoller()
        // this is a class that has a Text Widget in return
        // child: StyledText('Hi World!')
      ),
    );
  }
}