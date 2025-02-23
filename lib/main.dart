import 'package:flutter/material.dart';
import 'package:nexus_quiz_app/topics/my_grid_view.dart';
import 'screens/start_screen.dart';
import 'screens/question_screen.dart';
import 'topics/my_list_view.dart';
import 'topics/my_list_view_users.dart';

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
    } else if (activeScreen == 'banks-screen') {
      screenWidget = MyListView();
    } else if (activeScreen == 'users-screen') {
      screenWidget = MyListViewUsers();
    } else if (activeScreen == 'grid-screen') {
      screenWidget = MyGridView();
    }

    return MaterialApp(
      title: 'Gamification Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: screenWidget,
      // home: const MyListView(),
      home: const MyListViewUsers(),
    );
  }
}
