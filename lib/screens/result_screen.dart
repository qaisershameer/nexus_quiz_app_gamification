import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../custom_widgets/my_result_summary.dart';
import '../data/question_data.dart';

import '../custom_widgets/my_app_button_icon.dart';
import '../custom_widgets/my_app_button_filled.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.onRestart, required this.chosenAnswers});

  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'questionIndex': i,
        'question': questions[i].text,
        'correct_answer': questions[i].correctAnswer,
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numberOfTotalQuestions = questions.length;
    final numberOfCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    // print(summaryData);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green, Colors.yellow],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title
              Text(
                'You answered $numberOfCorrectQuestions out of $numberOfTotalQuestions questions correctly!',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                ),
              ),

              const SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ResultSummary(summaryData),
                  // Text(summaryData.toString()),
                ],
              )),

              const SizedBox(
                height: 8.0,
              ),

              // Using Custom Widget MyAppButtonIcon 01
              MyAppButtonIcon(
                myOnPressed: onRestart,
                buttonText: 'RESTART QUIZ',
              ),

              const SizedBox(
                height: 8.0,
              ),
              // Using Custom Widget MyAppButtonIcon 02
              MyAppButtonIcon(
                myOnPressed: onRestart,
                buttonText: 'HOME SCREEN',
              ),

              const SizedBox(
                height: 8.0,
              ),
              // Using Custom Widget MyAppButtonIcon 03
              MyAppButtonIcon(
                myOnPressed: onRestart,
                buttonText: 'START QUIZ',
              ),

              const SizedBox(
                height: 8.0,
              ),
              // Using Custom Widget MyAppButtonIcon 01
              MyAppButtonFilled(
                myOnPressed: onRestart,
                buttonText: 'RESTART',
                buttonHeight: 140,
                buttonWidth: 40,
              ),

              const SizedBox(
                height: 8.0,
              ),
              // Using Custom Widget MyAppButtonIcon 02
              MyAppButtonFilled(
                myOnPressed: onRestart,
                buttonText: 'HOME',
                buttonHeight: 150,
                buttonWidth: 50,
              ),

              const SizedBox(
                height: 8.0,
              ),
              // Using Custom Widget MyAppButtonIcon 03
              MyAppButtonFilled(
                myOnPressed: onRestart,
                buttonText: 'LOG OUT',
                buttonHeight: 160,
                buttonWidth: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
