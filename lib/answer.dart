import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function clickHandler;
  var text;
  Answer(this.clickHandler,this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: RaisedButton(
        child: Text(text as String),
        onPressed: () => {clickHandler()},
        color: Colors.blue.shade400,
      ),
    );
  }
}
