import 'package:flutter/material.dart';

class ResultSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const ResultSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Results'),
      ),
      body: ListView.builder(
        itemCount: summaryData.length,
        itemBuilder: (ctx, index) {
          final questionData = summaryData[index];
          final question = questionData['question'] as String;
          final correctAnswer = questionData['correct_answer'] as String;
          final userAnswer = questionData['user_answer'] as String;

          return ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Display the question in black
                Text(
                  question,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
                // Display the correct answer in green

                Text(
                  'Correct Answer: $correctAnswer',
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                  ),
                ),
                // Display the user answer, white color by default, change based on correctness
                Text(
                  'Your Answer: $userAnswer',
                  style: TextStyle(
                    color: userAnswer == correctAnswer
                        ? Colors.white
                        : Colors.red, // Red if wrong, white if correct
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
