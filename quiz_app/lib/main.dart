// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";

import './answer.dart';
import "./question.dart";

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
  var questions = [
    {
      "question": "What is your favorite color?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "question": "What is your favorite animal?",
      "answers": ["Rabbit", "Dog", "Cat", "Horse"]
    },
    {
      "question": "What is your favorite season?",
      "answers": ["Spring", "Summer", "Fall", "Winter"]
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      print("Answer chosen!");
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
        body: Column(
          children: [
            Question(
              questions[_questionIndex]["question"] as String,
            ),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
