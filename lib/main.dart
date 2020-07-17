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
  var _question = ['Name', "Age", "Place"];
  void questionsSelection() {
    setState(() {
      if (this.index < 2)
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
        ),
        body: Column(
          children: [
            Question(_question[index]),
            Answer(questionsSelection),
            Answer(questionsSelection),
            Answer(questionsSelection),
          ],
        ),
      ),
    );
  }
}
