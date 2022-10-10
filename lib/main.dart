import 'package:flutter/material.dart';
import 'package:new_try/result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(NewHomepage());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: NewHomepage(),
//     );
//   }
// }

class NewHomepage extends StatefulWidget {
  const NewHomepage({super.key});

  @override
  State<NewHomepage> createState() {
    return _NewHomepageState();
  }
}

class _NewHomepageState extends State<NewHomepage> {
  //_NewHomepageState it is private class so it can be used only in  main.dar file.

  final _questions = const [
    {
      'questionText': 'Which is the capital city of India ',
      'answers': [
        {
          'text': 'Delhi',
          'value': 10,
        },
        {
          'text': 'Mumbai',
          'value': 0,
        },
        {
          'text': 'Chennai',
          'value': 0,
        },
        {
          'text': 'Bangalore',
          'value': 0,
        }
      ],
    },
    {
      'questionText': 'When did India won first 1st ODI WorldCup',
      'answers': [
        {
          'text': '1999',
          'value': 0,
        },
        {'text': '2004', 'value': 0},
        {
          'text': '2011',
          'value': 0,
        },
        {
          'text': '1983',
          'value': 10,
        }
      ],
    },
    {
      'questionText': 'Who is scored 100\'s Century in his carrer ',
      'answers': [
        {'text': 'Sachin Tendulkar', 'value': 10},
        {'text': 'Adam Gilchirst', 'value': 0},
        {'text': 'Virat Kohli', 'value': 0},
        {
          'text': 'Ricky Pointing',
          'value': 10,
        },
      ],
    },
    {
      'questionText':
          'Where will be the T20 World cup 2022 edition going to be held ',
      'answers': [
        {'text': 'England', 'value': 0},
        {'text': 'Australia', 'value': 10},
        {'text': 'India', 'value': 0},
        {
          'text': 'U.A.E',
          'value': 0,
        },
      ],
    },
  ];

  int _questionindex = 0;
  int _totalScore = 0;

  void _restartquiz() {
    setState(() {
      _questionindex = 0;
      _totalScore = 0;
    });
    print(_questionindex);
    print(_totalScore);
  }

  void _answerQuestions(int value) {
    _totalScore += value;

    setState(() {
      _questionindex = _questionindex + 1;
    });
    print(_questionindex);
    // print(questionindex);
    if (_questionindex < _questions.length) {
      print('We have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Let\'s test your knownlegde!!!'),
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                answerQuestions:
                    _answerQuestions, // 1. results this error if (_answerQuestions) used like this: The argument type 'dynamic Function(int)' can't be assigned to the parameter type 'void Function() because I used voidcallback in quiz.dart file
                questionindex: // 2. so use  an empty fn like this ()=>,if we use this fn it results an expection so I used 'Function' in quiz dart file for answerQuestions.
                    _questionindex, //3. use only pointer like _answerQuestions
                questions: _questions,
              )
            : Result(_totalScore, _restartquiz),
      ),
    );
  }
}
