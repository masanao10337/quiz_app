import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String currentScreen = 'start-screen';
  List<String> selectedAnswers = [];

  // TODO: refactor
  void goQuiz() {
    _goToScreen('questions-screen');
  }

  void goResult() {
    _goToScreen('result-screen');
  }

  void backToStart() {
    _goToScreen('start-screen');
  }

  void storeAnswer(String answer) {
    selectedAnswers.add(answer);
    // 関心事が重複している。
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        goResult();
      });
    }
  }

  void _goToScreen(String screenName) {
    setState(() {
      currentScreen = screenName;
    });
  }

  @override
  Widget build(context) {
    Map<String, Widget> screens = {
      'start-screen': StartScreen(startQuiz: goQuiz),
      'questions-screen': QuestionsScreen(storeAnswer: storeAnswer),
      'result-screen': ResultScreen(
        backToStart: backToStart,
        chosenAnswers: selectedAnswers,
      ),
    };
    Widget screenWidget = screens[currentScreen]!;

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
