import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  var _questionAnswerList = [
    {
      'question': 'Country',
      'answer': ['India', 'Australia', 'Canada', 'US'],
      'color': 800,
    },
    {
      'question': 'Planet',
      'answer': ['Earth', 'Mars', 'Pluto'],
      'color': 600,
    },
    {
      'question': 'Age',
      'answer': ['less than 25', 'between 25 & 40', 'greater than 70'],
      'color': 800,
    },
    {
      'question': 'State',
      'answer': ['Kerala', 'Karnataka', 'Rajasthan', 'Goa'],
      'color': 400,
    },
  ];

  void questionsSelection() {
    setState(() {
      if (this.index < 3)
        this.index += 1;
      else
        this.index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            Question(
              _questionAnswerList[index]['question'],
            ),
            ...(_questionAnswerList[index]['answer'] as List<String>)
                .map((answer) {
              return Answer(
                questionsSelection,
                answer,
                _questionAnswerList[index]['color'],
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
