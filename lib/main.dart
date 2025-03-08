import 'package:flutter/material.dart';

// QUIZ SCREENS
import '../data/question_data.dart';
import '../screens/start_screen.dart';
import '../screens/question_screen.dart';
import '../screens/result_screen.dart';

import 'package:nexus_quiz_app/screens/topic_screen.dart';
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
  // int topicNumber = 0;

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);
    // print(selectedAnswers);
    if (selectedAnswers.length == questions.length) {
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

  void switchTopicScreen() {
    setState(() {
      activeScreen = 'topic-screen';
    });
  }

  void topicScreen(int topicNumber) {
    setState(() {
      // this.topicNumber = topicNumber;
      switch (topicNumber) {
        case 0:
          activeScreen = 'topic-screen';
          break;
        case 1:
          activeScreen = 'animated-controller';
          break;
        case 2:
          activeScreen = 'animated-opacity';
          break;
        case 3:
          activeScreen = 'animated-padding';
          break;
        case 4:
          activeScreen = 'animated-position';
          break;
        case 5:
          activeScreen = 'grid-screen';
          break;
        case 6:
          activeScreen = 'grid-screen-products';
          break;
        case 7:
          activeScreen = 'list-screen';
          break;
        case 8:
          activeScreen = 'list-screen-separated';
          break;
        case 9:
          activeScreen = 'list-screen-users';
          break;
        default:
          activeScreen = 'start-screen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(
      startQuiz: switchScreen,
      startTopics: () => topicScreen(0),
    );

    // QUIZ SCREENS
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswers, home: restartQuiz,);
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        onRestart: restartQuiz,
        chosenAnswers: selectedAnswers,
      );
    }

    // // TOPICS // ANIMATIONS SCREENS

    if (activeScreen == 'topic-screen') {
      screenWidget = TopicScreen(onSelectTopic: topicScreen);
    }

    if (activeScreen == 'animated-controller') {
      screenWidget = MyAnimatedController(home: restartQuiz, topics: () => topicScreen(0),);
    }

    if (activeScreen == 'animated-opacity') {
      screenWidget = MyAnimatedOpacity(home: restartQuiz, topics: () => topicScreen(0),);
    }

    if (activeScreen == 'animated-padding') {
      screenWidget = MyAnimatedPadding(home: restartQuiz, topics: () => topicScreen(0),);
    }

    if (activeScreen == 'animated-position') {
      screenWidget = MyAnimatedPosition(home: restartQuiz, topics: () => topicScreen(0),);
    }

    // TOPICS // GRID VIEW SCREENS
    if (activeScreen == 'grid-screen') {
      screenWidget = MyGridView(home: restartQuiz, topics: () => topicScreen(0),);
    }

    if (activeScreen == 'grid-screen-products') {
      screenWidget = MyGridViewProducts(home: restartQuiz, topics: () => topicScreen(0),);
    }

    // TOPICS // LIST VIEW SCREENS
    if (activeScreen == 'list-screen') {
      screenWidget = MyListView(home: restartQuiz, topics: () => topicScreen(0),);
    }

    if (activeScreen == 'list-screen-separated') {
      screenWidget = MyListViewSeparated(home: restartQuiz, topics: () => topicScreen(0),);
    }

    if (activeScreen == 'list-screen-users') {
      screenWidget = MyListViewUsers(home: restartQuiz, topics: () => topicScreen(0),);
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
