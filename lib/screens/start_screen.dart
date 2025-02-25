import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.startQuiz});
  final void Function() startQuiz;

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
          const SizedBox(
            height: 16.0,
          ),
          // Title
          Text(
            'Guess the Animal Voice',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              decoration: TextDecoration.none,
            ),
          ),

          const SizedBox(
            height: 16.0,
          ),

          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_forward),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.lato(),
            ),
            onPressed:
                // screen switching
                startQuiz,
          ),

          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_forward),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: Text(
              'View Banks',
              style: GoogleFonts.lato(),
            ),
            onPressed:
            // screen switching
            startQuiz,
          ),

          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_forward),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: Text(
              'View Users',
              style: GoogleFonts.lato(),
            ),
            onPressed:
            // screen switching
            startQuiz,
          ),

          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_forward),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: Text(
              'View Grid',
              style: GoogleFonts.lato(),
            ),
            onPressed:
            // screen switching
            startQuiz,
          ),

        ],
      ),
    );
  }
}
