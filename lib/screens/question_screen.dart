import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexus_quiz_app/data/question_data.dart';
import 'package:nexus_quiz_app/models/question_model.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  int currentQuestionIndex = 0;
  bool isPlaying = false;
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {
        setState(() {});
      });

    _scaleAnimation = Tween<double>(begin: 0.6, end: 1.2)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _controller.dispose();
    super.dispose();
  }

  void playAudio({required String audioPath}) async {
    if (isPlaying) {
      // isPlaying true
      await _audioPlayer.stop();
      _controller.stop();
      setState(() {
        isPlaying = false;
      });
    } else {
      // isPlaying false
      try {
        await _audioPlayer.setSource(AssetSource(audioPath));
        await _audioPlayer.resume();
        _controller.repeat(reverse: true);
        setState(() {
          isPlaying = true;
        });

        _audioPlayer.onPlayerComplete.listen((event) {
          _controller.stop();
          setState(() {
            isPlaying = false;
          });
        });
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            duration: Duration(microseconds: 800),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.red,
            content: Text('Cannot Playing Audio.')));
        // print(e);
      }
    }
  }

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        // height: MediaQuery.sizeOf(context).height,
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
            Column(
              children: [
                Text(
                  'QUESTION # ${currentQuestionIndex+1}',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: Colors.green.shade900,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  currentQuestion.text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                GestureDetector(
                  onTap: () => playAudio(audioPath: currentQuestion.audioPath),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      if (isPlaying)
                        ScaleTransition(
                          scale: _scaleAnimation,
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.withOpacity(0.3),
                            ),
                          ),
                        ),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.green,
                        child: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          size: 45,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            SizedBox(
              height: 400,
              child: GridView.builder(
                  itemCount: currentQuestion.answers.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () =>
                          answerQuestion(currentQuestion.answers[index]),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage(currentQuestion.images[index]),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              currentQuestion.answers[index],
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
