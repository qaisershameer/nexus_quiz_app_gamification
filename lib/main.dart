import 'package:flutter/material.dart';

// QUIZ SCREENS
import '../data/question_data.dart';
import '../screens/start_screen.dart';
import '../screens/question_screen.dart';
import '../screens/result_screen.dart';

// TOPICS // ANIMATIONS SCREENS
import '../topics/my_animated_padding.dart';
import '../topics/my_animated_position.dart';
import '../topics/my_animated_opacity.dart';
import '../topics/my_animated_controller.dart';

// TOPICS // GRID VIEW SCREENS
import '../topics/my_grid_view.dart';
import '../topics/my_grid_view_products.dart';

// TOPICS // LIST VIEW SCREENS
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
    // print(selectedAnswers);
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

    // QUIZ SCREENS
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswers,);
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(onRestart: restartQuiz, chosenAnswers: selectedAnswers,);
    }

    // TOPICS // ANIMATIONS SCREENS
    if (activeScreen == 'animated-controller') {
      screenWidget = const MyAnimatedController();
    }

    if (activeScreen == 'animated-opacity') {
      screenWidget = const MyAnimatedOpacity();
    }

    if (activeScreen == 'animated-padding') {
      screenWidget = const MyAnimatedPadding();
    }

    if (activeScreen == 'animated-position') {
      screenWidget = const MyAnimatedPosition();
    }

    // TOPICS // GRID VIEW SCREENS
    if (activeScreen == 'grid-screen') {
      screenWidget = const MyGridView();
    }

    if (activeScreen == 'grid-screen-products') {
      screenWidget = const MyGridViewProducts();
    }

    // TOPICS // LIST VIEW SCREENS
    if (activeScreen == 'list-screen') {
      screenWidget = const MyListView();
    }

    if (activeScreen == 'list-screen-separated') {
      screenWidget = const MyListViewSeparated();
    }

    if (activeScreen == 'list-screen-users') {
      screenWidget = const MyListViewUsers();
    }

    return MaterialApp(
      title: 'Gamification Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: screenWidget,
    );
  }
}
