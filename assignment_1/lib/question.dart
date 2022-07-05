import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  @override
  final String question_text;
  Question(this.question_text);

  Widget build(BuildContext context) {
    return Container(
      child: Text(question_text),
      margin: EdgeInsets.all(20.0),
    );
  }
}
