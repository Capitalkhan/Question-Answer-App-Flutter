import 'package:flutter/material.dart';
import 'package:folder_2/result.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(France());
}

class France extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FranceState();
  }
}

class FranceState extends State<France> {
  int index = 0;
  int _totalScore = 0;

  var questions = [
    {
      'questionText': 'What\'s your country?',
      'answer': [
        {'text': 'Germany', 'score': 13},
        {'text': 'Australia', 'score': 15},
        {'text': 'Arab', 'score': 9},
        {'text': 'Pakistan', 'score': 6}
      ]
    },
    {
      'questionText': 'What\'s your favorite Color?',
      'answer': [
        {'text': 'Black', 'score': 7},
        {'text': 'White', 'score': 4},
        {'text': 'Red', 'score': 9},
        {'text': 'Green', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answer': [
        {'text': 'Biryani', 'score': 10},
        {'text': 'Karai', 'score': 5},
        {'text': 'Sea food', 'score': 8},
        {'text': 'Vegetarian', 'score': 7}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Dog', 'score': 17},
        {'text': 'Cat', 'score': 19},
        {'text': 'Loin', 'score': 11},
        {'text': 'Big cate', 'score': 16}
      ]
    },
  ];

  void _answerQuestion(int score) {

    _totalScore += score;
    setState(() {
      ++index;
    });
  }
  void restartQuiz(){

    setState(() {
      index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Question/Answer'),
          ),
        ),
        body:index<questions.length ? Column(
          children: [
            Question(questions[index]['questionText'].toString()),
            const SizedBox(
              height: 21,
            ),
            ...(questions[index]['answer'] as List<Map<String, Object>>).map((answers) {
              return Answer(() => _answerQuestion(answers['score'] as int), answers['text'] as String);
            }).toList()
          ],

        ) : Result(_totalScore,restartQuiz),
      ),
    );
  }
}
