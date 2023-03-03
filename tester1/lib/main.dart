import 'package:flutter/material.dart';
import 'package:tester1/answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final questions = const [
    {
      'questionText': 'Which team has the most champions leagues?',
      'answers': [
        {'text': 'Bayern Munich', 'score': 0},
        {'text': 'Real Madrid', 'score': 1},
        {'text': 'Liverpool', 'score': 0},
        {'text': 'Zamalek', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s your favourite Footballer?',
      'answers': [
        {'text': 'Ronaldo', 'score': 1000},
        {'text': 'Messi', 'score': -1000},
        {'text': 'Neymar', 'score': 0},
        {'text': 'Salah', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 1},
        {'text': 'Black', 'score': 1},
      ],
    },
  ];
  var questionnn = 0;
  var totalScore = 0;
  void _resetQuiz() {
    setState(() {
      questionnn = 0;
      totalScore = 0;
    });
  }

  void _changeQuestion(int score) {
    totalScore += score;
    setState(() {
      questionnn++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: questionnn < questions.length
          ? Quiz(
              changeQuestion: _changeQuestion,
              questionIndex: questionnn,
              questions: questions,
            )
          : Result(totalScore, _resetQuiz),
    );
  }
}
