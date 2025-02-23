import 'package:flutter/material.dart';
import 'screens/start_screen.dart';
import 'screens/question_screen.dart';
import 'topics/my_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(
      startQuiz: switchScreen,
    );

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen();
    }

    return MaterialApp(
      title: 'Gamification Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: screenWidget,
      home: const MyListView(),
    );
  }
}
