import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectQuestion;

  Answer(this.selectQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: RaisedButton(
        color: Colors.blue[500],
        child: Text("Ans 1"),
        onPressed: selectQuestion,
        textColor: Colors.white,
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
