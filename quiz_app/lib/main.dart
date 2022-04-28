// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";

import "./answer.dart";
import "./quiz.dart";
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      "question": "How long is an Olympic swimming pool (in meters)?",
      "answers": [
        {"answer": "50m", "correct": true},
        {"answer": "20m", "correct": false},
        {"answer": "30m", "correct": false},
        {"answer": "60m", "correct": false}
      ]
    },
    {
      "question":
          "What countries made up the original Axis powers in World War II?",
      "answers": [
        {"answer": "Germany, France, Italy", "correct": false},
        {"answer": "Germany, Denmark, Italy", "correct": false},
        {"answer": "Germany, Italy, Japan", "correct": true},
        {"answer": "Germany, Romania, Italy", "correct": false}
      ]
    },
    {
      "question": "What is cynophobia?",
      "answers": [
        {"answer": "Fear of sarcasm", "correct": false},
        {"answer": "Fear of dogs", "correct": true},
        {"answer": "Fear of storms", "correct": false},
        {"answer": "Fear of cynicism", "correct": false}
      ]
    }
  ];

  var _questionIndex = 0;
  var _total_score = 0;

  void _answerQuestion(bool correct) {
    if (correct == true) {
      _total_score += 1;
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_total_score, _questions.length),
      ),
    );
  }
}
