import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
// void main() {
// runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': "What is your School",
        'answers': ["AACC", "ZNC", "AHIIS"]
      },
      {
        'questionText': "Where are you from",
        'answers': ["Thihariya", "Colombo", "Moratuwa"]
      },
      {
        'questionText': "What is the year you attempted O/L first",
        'answers': ["2014", "2015", "2016"]
      },
      {
        'questionText': "What is your favourite sports",
        'answers': ["Cricket", "Football", "Volleyball"]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shaja Nasir"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion)
          ],
        ),
      ),
    );
  }
}
