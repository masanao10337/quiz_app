import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({
    required this.data,
    super.key,
  });

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ((data['question_index'] as int) + 1).toString(),
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 23, 6, 27),
            fontSize: 18,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                data['question'] as String,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 244, 244, 244),
                  fontSize: 16,
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
    );
  }
}
