import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      'question': 'who is your favorite instructor',
      'answers': ['jason', 'ibrahim', 'bashar', 'roaa'],
    },
    {
      'question': 'What is your favorite language',
      'answers': ['java', 'dart', 'javascript', 'python'],
    },
  ];

  int questionIndex = 0;

  void _buttonPressed() {
    setState(() => {if (questionIndex < questions.length-1) questionIndex++});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[questionIndex]['question'],
            ),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((e) => Answer(_buttonPressed, e))
                .toList(),
          ],
        ),
      ),
    );
  }
}
