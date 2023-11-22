import 'package:flutter/material.dart';

class QuestionIndentifier extends StatelessWidget {
  const QuestionIndentifier({
    required this.questionNumber,
    required this.isCorrect,
    super.key,
  });
  final int questionNumber;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 101, 143, 233)
            : const Color.fromARGB(255, 232, 95, 86),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 45, 43, 45),
        ),
      ),
    );
  }
}

// Container(
//   decoration: BoxDecoration(
//     boderRadius: BorderRadius.circular(100),
//     ),
//   ),
//   child: Text('丸で装飾されたテキスト'),
//   );
