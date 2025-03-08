import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexus_quiz_app/custom_widgets/my_app_button_icon.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.startQuiz, required this.startTopics});
  final void Function() startQuiz;
  final Function() startTopics;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Logo
          Image.asset(
            'assets/images/animals/quiz_logo.png',
            width: 300,
          ),
          const SizedBox(height: 16.0,),
          // Title
          Text(
            'Guess the Animal Voice',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              decoration: TextDecoration.none,
            ),
          ),

          const SizedBox(height: 16.0,),

          MyAppButtonIcon(myOnPressed: startQuiz, buttonText: 'Start Quiz', buttonIcon: const Icon(Icons.arrow_forward)),

          const SizedBox(height: 16.0,),

          MyAppButtonIcon(myOnPressed: startTopics, buttonText: 'Learn Widgets', buttonIcon: const Icon(Icons.ac_unit)),

        ],
      ),
    );
  }
}