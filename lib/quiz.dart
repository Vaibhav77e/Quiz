import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart'; //means look in the same folder

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int questionindex;

  Quiz(
      {required this.answerQuestions,
      required this.questions,
      required this.questionindex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Questions(
        questions[questionindex]['questionText']
            .toString(), //objects can't be asigned to String so we need to convert "questionText " to String by using toSring().
      ),
      ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => answerQuestions(answer['value']), answer['text'] as String);
      }).toList(),
    ]);
  }
}
