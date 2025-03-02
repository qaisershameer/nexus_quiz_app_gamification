import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.onRestart});
  final void Function() onRestart;

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
          // Title
          Text(
            'This is the Result Screen',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 20,
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
            onRestart,
          ),

        ],
      ),
    );
  }
}
