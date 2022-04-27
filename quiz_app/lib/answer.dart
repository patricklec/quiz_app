// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback selectAnswer;
  final String answerText;

  Answer(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, //Increase size of buttons
      padding: EdgeInsets.only(top: 15), //Split Answer buttons apart
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectAnswer,
      ),
    );
  }
}
