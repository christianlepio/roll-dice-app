import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //this constructor can be constant because the localText below is final state.
  const StyledText(
    // this is a positiioned one approach
    this.localText, // this will accept a value and set the value to the local variable using 'this' keyword 
    {super.key}
  );

  // final means this will only accept one value that never change its value
  final String localText;

  @override
  Widget build(BuildContext context) {
    // widget to display text
    return Text(
      localText, // value
      style: const TextStyle( // styling
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}