import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore = 0;
  final VoidCallback restartHandler;
  Result(this.resultScore, this.restartHandler);

  String get resultPharse {
    String resultText;
    if (resultScore == 40) {
      resultText = 'You are mindblowing ';
    } else if (resultScore == 30) {
      resultText = 'You are very good';
    } else {
      resultText = 'Need to work hard';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPharse,
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: restartHandler,
            child: Text('Restart quiz'),
          )
        ],
      ),
    );
  }
}
