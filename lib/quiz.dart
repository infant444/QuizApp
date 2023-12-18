import 'package:flutter/material.dart';
import 'package:app2/start.dart';
import 'package:app2/quizscreen.dart';
import 'package:app2/data/Question.dart';
import 'package:app2/result_screen.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});
  @override
  State<QuizScreen> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
  Widget? v;
  @override
  void initState() {
    v = startscreen(switchable);
    super.initState();
  }

  final List<String> chans = [];

  void switchable(String x) {
    setState(() {
      if (x == "startQuiz") {
        v = QuestionScreen(choosed_answer);
        chans.clear();
      } else if (x == "result") {
        v = resultScreen(switchable, chans);
      } else if (x == "start") {
        v = startscreen(switchable);
      } else if (x == "edit") {
        print("Edit");
      }
    });
  }

  void choosed_answer(String ans) {
    chans.add(ans);
    print(chans.length);
    print(Question.length);

    if (chans.length == Question.length) {
      switchable("result");
    }
  }

  @override
  Widget build(Object context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 245, 183, 183),
              Color.fromARGB(255, 192, 243, 211)
            ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
            child: v),
      ),
    );
  }
}
