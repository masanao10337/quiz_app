import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/widgets/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.storeAnswer, super.key});

  final void Function(String answer) storeAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int questionIndex = 0;

  void answserQuestion(String selecetedAnswer) {
    _incrementIndex();
    widget.storeAnswer(selecetedAnswer);
  }

  void _incrementIndex() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 192, 136, 223),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...currentQuestion.shuffleAnswers().map((answer) {
              return AnswerButton(
                text: answer,
                onTap: () {
                  answserQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
