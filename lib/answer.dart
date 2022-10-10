import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  // refers that a function which return something
  //if error occur use voidcallback method which
  //tells that it won't accept arg or return arg.
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
