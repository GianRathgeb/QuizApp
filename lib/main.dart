import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'Was ist deine Lieblingsfarbe?',
      'answers': ['Schwarz', 'Rot', 'Blau', 'Magenta']
    },
    {
      'questionText': 'Was ist dein Lieblingstier?',
      'answers': ['Hund', 'Katze', 'Tiger', 'Elefant']
    },
    {
      'questionText': 'Was ist dein Lieblinsessen',
      'answers': ['Pizza', 'Pasta', 'Pommes und Schnitzel', 'Fleisch']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meine erste App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
