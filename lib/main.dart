import 'package:flutter/material.dart';
import './question.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  var questions = [
    'Was ist deine Lieblingsfarbe?',
    'Was ist dein Lieblingstier?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meine erste App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(child: Text('Antwort 1'), onPressed: _answerQuestion),
            RaisedButton(
              child: Text('Antwort 2'),
              onPressed: () => print('Antwort 2 wurde gewaehlt'),
            ),
            RaisedButton(
              child: Text('Antwort 3'),
              onPressed: () {
                // .....
                print('Antwort 3 wurde gewaehlt');
              },
            ),
          ],
        ),
      ),
    );
  }
}
