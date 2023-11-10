import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The Question...',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          AnswerButton(
            text: 'answer1',
            onTap: () {},
          ),
          AnswerButton(
            text: 'answer2',
            onTap: () {},
          ),
          AnswerButton(
            text: 'answer3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
