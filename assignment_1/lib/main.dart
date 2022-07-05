import 'package:assignment_1/question_manager.dart';
import 'package:flutter/material.dart';

import './question_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextApp - Assignment 1'),
        ),
        body: Center(child: QuestionManager()),
      ),
    );
  }
}
