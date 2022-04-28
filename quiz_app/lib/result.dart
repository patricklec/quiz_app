// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final max_score;
  final VoidCallback restart;

  Result(this.resultScore, this.max_score, this.restart);

  String get resultPhrase {
    var resultText = "You did it!";

    if (resultScore == max_score) {
      resultText = "You got the maximum score! Congratulations";
    } else if (resultScore == 1) {
      resultText = "You got 1 point. Better luck next time";
    } else if (resultScore == 0) {
      resultText = "You got no points. Better luck next time";
    } else {
      resultText = "You got $resultScore points. Good job";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restart,
            child: Text("Try again!", style: TextStyle(fontSize: 18)),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
