class QuizQuestion {
  const QuizQuestion({
    required this.text,
    required this.answers,
  });

  final String text;
  final List<String> answers;

  List<String> shuffleAnswers() {
    final copiedAnswers = List.of(answers);
    copiedAnswers.shuffle();
    return copiedAnswers;
  }
}
