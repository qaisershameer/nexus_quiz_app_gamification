import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexus_quiz_app/custom_widgets/my_app_button_container.dart';
import '../custom_widgets/question_summary.dart';
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
        'question_Index': i,
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green, Colors.yellow],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            SizedBox(
              width: double.infinity,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 48),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You answered $numberOfCorrectQuestions out of $numberOfTotalQuestions questions correctly!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),


                  ],
                ),
              ),
            ),

            const SizedBox(height: 8.0,),

            QuestionSummary(summaryData: summaryData),

            const SizedBox(height: 8.0,),

            // Using Custom Widget MyAppButtonIcon 01
            MyAppButtonIcon(
              myOnPressed: onRestart,
              buttonText: 'RESTART QUIZ',
              buttonIcon: const Icon(Icons.refresh),
            ),

            // // Using Custom Widget MyAppButtonIcon 02
            // MyAppButtonIcon(
            //   myOnPressed: onRestart,
            //   buttonText: 'HOME SCREEN',
            //   buttonIcon: const Icon(Icons.home),
            // ),

            // // Using Custom Widget MyAppButtonIcon 03
            // MyAppButtonIcon(
            //   myOnPressed: onRestart,
            //   buttonText: 'LOG OUT',
            //   buttonIcon: const Icon(Icons.logout),
            // ),
            //
            // // Using Custom Widget MyAppButtonIcon 01
            // MyAppButtonFilled(
            //   myOnPressed: onRestart,
            //   buttonText: 'HOME',
            //   buttonHeight: 35,
            //   buttonWidth: 120,
            // ),
            //
            // // Using Custom Widget MyAppButtonIcon 02
            // MyAppButtonFilled(
            //   myOnPressed: onRestart,
            //   buttonText: 'RESTART',
            //   buttonHeight: 40,
            //   buttonWidth: 140,
            // ),
            //
            // // Using Custom Widget MyAppButtonIcon 03
            // MyAppButtonFilled(
            //   myOnPressed: onRestart,
            //   buttonText: 'LOG OUT',
            //   buttonHeight: 45,
            //   buttonWidth: 160,
            // ),
            //
            // const MyAppButtonContainerWithText(
            //   myButtonMargin: 8,
            //   myButtonWidth: 180,
            //   myButtonHeight: 50,
            //   myButtonBorderRadius: 32,
            //   myButtonColor: Colors.green,
            //   myButtonText: 'HOME SCREEN',
            //   myTextColor: Colors.white,
            // ),


          ],
        ),
      ),
    );
  }
}
