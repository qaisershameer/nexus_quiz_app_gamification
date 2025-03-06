import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    bool isCorrect = false;
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: summaryData.map((data) {

            isCorrect = data['user_answer'] == data['correct_answer'];

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${(data['question_Index'] as int) + 1}.',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          (data['question'] as String),
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(height: 5.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('You Selected: ', style: GoogleFonts.lato(fontWeight: FontWeight.bold),),
                            Text(
                              '${(data['user_answer'])}',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                color: isCorrect ? Colors.green.shade800 : Colors.red.shade800,
                              ),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Correct Answer: ', style: GoogleFonts.lato(fontWeight: FontWeight.bold),),
                            Text(
                              '${(data['correct_answer'])}',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: isCorrect ? Colors.deepPurple.shade800 : Colors.green.shade800,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(), // Map used for Data Modificaton / Data Transformation.
        ),
      ),
    );
  }
}
