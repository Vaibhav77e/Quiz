import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //takes full width of screen
      margin: const EdgeInsets.all(10),
      child: Text(
        //now text widget will take full width of caontainer ,intistiate itself to center.
        questionText,
        style: const TextStyle(fontSize: 26),
        textAlign: TextAlign.center, //enum-TextAlign
      ),
    );
  }
}
