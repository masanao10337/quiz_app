import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {required this.backToStart, required this.chosenAnswers, super.key});

  final List<String> chosenAnswers;
  final void Function() backToStart;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('testing You anwsered X out of Y questions correctly'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of answers and questions...'),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('back to top')),
          ],
        ),
      ),
    );
  }
}
