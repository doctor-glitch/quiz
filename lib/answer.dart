import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectQuestion;
  final String answerText;
  final int color;

  Answer(this.selectQuestion, this.answerText, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: RaisedButton(
        color: Colors.cyan[this.color],
        child: Text(this.answerText),
        onPressed: selectQuestion,
        textColor: Colors.white,
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
