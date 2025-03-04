import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../custom_widgets/my_result_summary.dart';
import '../data/question_data.dart';
import '../custom_widgets/my_app_button.dart';

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


              const SingleChildScrollView(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // ResultSummary(summaryData),
                  // Text(summaryData.toString()),

                ],
              )),

              const SizedBox(
                height: 16.0,
              ),

              MyAppButton(myOnPressed: onRestart, buttonText: 'Restart Quiz',),
            ],
          ),
        ),
      ),
    );
  }
}

