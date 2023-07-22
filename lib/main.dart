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
  final questions = const [
    {
      'questionText': 'Find the most frequent letter: AITWIFSATCIJKTMZI',
      'answers': [
        {'text': 'A', 'score': 2},
        {'text': 'I', 'score': 4},
        {'text': 'J', 'score': 1},
        {'text': 'T', 'score': 3},
      ],
    },
    {
      'questionText': 'How many . can you see: ,,,.,,,.,,,,..,,,,,.,,,,',
      'answers': [
        {'text': '5', 'score': 4},
        {'text': '6', 'score': 3},
        {'text': '7', 'score': 2},
        {'text': '8', 'score': 1},
      ],
    },
    {
      'questionText': '1+1+1+1+1+1',
      'answers': [
        {'text': '8', 'score': 2},
        {'text': '7', 'score': 1},
        {'text': '6', 'score': 3},
        {'text': '5', 'score': 1},
      ],
    },
  ];

  var questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Quiz',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 43, 1, 39)),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 222, 131, 234),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
