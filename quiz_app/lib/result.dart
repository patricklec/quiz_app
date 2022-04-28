import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  var max_score;

  Result(this.resultScore, this.max_score);

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
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
