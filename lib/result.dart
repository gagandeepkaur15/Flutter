import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 4) {
      resultText = 'You are a bad observer!';
    } else if (resultScore <= 7) {
      resultText = 'You are still learning to observe details!';
    } else if (resultScore <= 9) {
      resultText = 'You are good at observing things!';
    } else {
      resultText = 'You are a great observer!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            'Restart Quiz!',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          textColor: Color.fromARGB(255, 181, 100, 206),
          onPressed: resetHandler,
        ),
      ],
    ));
  }
}
