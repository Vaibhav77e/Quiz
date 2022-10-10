import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  final String answerText;
  Answer(this.selectHandler, this.answerText, {Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          onPressed: selectHandler,
          child: Text(answerText)),
    );
  }
}
