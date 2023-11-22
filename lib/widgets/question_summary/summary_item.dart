import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/widgets/question_summary/question_indentifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    required this.data,
    super.key,
  });

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final questionNumber = (data['question_index'] as int) + 1;
    final isCorrect = data['user_answer'] == data['correct_answer'];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIndentifier(
            questionNumber: questionNumber,
            isCorrect: isCorrect,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'] as String,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 244, 244, 244),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  data['user_answer'] as String,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 228, 97, 199),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  data['correct_answer'] as String,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 118, 137, 222),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
