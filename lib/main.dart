import 'package:flutter/material.dart';

import 'data/question_data.dart';
import '../screens/start_screen.dart';
import '../screens/question_screen.dart';
import '../screens/result_screen.dart';

// import '../topics/my_animated_padding.dart';
// import '../topics/my_animated_position.dart';
// import '../topics/my_animated_opacity.dart';
// import '../topics/my_animated_controller.dart';
import '../topics/my_grid_view.dart';
import '../topics/my_grid_view_products.dart';
import '../topics/my_list_view.dart';
import '../topics/my_list_view_users.dart';
import '../topics/my_list_view_separated.dart';

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
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswers(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(
      startQuiz: switchScreen,
    );

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswers,);
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(onRestart: restartQuiz);
    }

    if (activeScreen == 'grid-screen') {
      screenWidget = MyGridView();
    }

    if (activeScreen == 'grid-screen-products') {
      screenWidget = const MyGridViewProducts();
    }

    if (activeScreen == 'list-screen') {
      screenWidget = MyListView();
    }

    if (activeScreen == 'list-screen-separated') {
      screenWidget = MyListViewSeparated();
    }

    if (activeScreen == 'list-screen-users') {
      screenWidget = MyListViewUsers();
    }

    return MaterialApp(
      title: 'Gamification Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: screenWidget,
      // home: const MyAnimatedController(),
      // home: const MyAnimatedOpacity(),
      // home: const MyAnimatedPadding(),
      // home: const MyAnimatedPosition(),
      // home: const MyGridView(),
      // home: const MyGridViewProducts(),
      // home: const MyListView(),
      // home: const MyListViewUsers(),
      // home: const MyListViewSeparated(),
    );
  }
}
