import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  bool _isStartScreen() {
    return activeScreen == 'start-screen';
  }

  void storeAnswer(String answer) {
    selectedAnswers.add(answer);

    // 関心事が重複している。switchScreenとの流用を考えること。
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(context) {
    final screenWidget = _isStartScreen()
        ? StartScreen(switchScreen)
        : QuestionsScreen(storeAnswer: storeAnswer);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 38, 6, 94),
                Color.fromARGB(255, 116, 61, 212)
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
