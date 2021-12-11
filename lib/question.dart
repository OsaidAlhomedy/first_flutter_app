import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final Object? text;

  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text as String,
        style:  TextStyle(
          fontSize: 20,
          color: Colors.red.shade600,
        ),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(12),
    );
  }
}
