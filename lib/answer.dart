import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(30),
      child: RaisedButton(
        color: Color.fromARGB(255, 84, 16, 162),
        textColor: Color.fromARGB(255, 255, 255, 255),
        hoverColor: Color.fromARGB(255, 197, 135, 214),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
