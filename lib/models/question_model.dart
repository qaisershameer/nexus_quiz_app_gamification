class QuizQuestion {
  final String text;
  final List<String> answers;
  final List<String> images;
  final String audioPath;
  final String correctAnswer;

  const QuizQuestion(this.text,  this.answers, this.images, this.audioPath, this.correctAnswer);

}