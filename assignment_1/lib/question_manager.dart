import 'package:flutter/material.dart';

import './question.dart';

class QuestionManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuestionManagerState();
  }
}

class _QuestionManagerState extends State<QuestionManager> {
  String _question_text = 'What is Newton\'s 3rd Law?';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_question_text),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _question_text = 'What is Gauss\'s Law?';
              });
            },
            child: Text('New Question')),
      ],
    );
  }
}
