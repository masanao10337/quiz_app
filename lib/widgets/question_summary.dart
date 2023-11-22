import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/result_container.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return ResultContainer(data: data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
