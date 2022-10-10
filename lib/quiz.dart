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

      ///... three dots(Speraders) tells us i.e below list is nested list to column so it will pull the values from the nested list add as individual values to surrounding list.
      ///we add values of nested list to a list not nested list to a list.
      ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => answerQuestions(answer['value']),
            answer['text']
                as String); //answerQuestions(answer['value'] resulting me error i defined it as VoidCallback so i changed to Function since voidCallback doesn't return anything
      }).toList(),
    ]);
  }
}
