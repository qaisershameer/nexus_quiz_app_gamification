import 'package:flutter/material.dart';

import '../screens/start_screen.dart';
import '../screens/question_screen.dart';

import '../topics/my_animated_opacity.dart';
import '../topics/my_animated_controller.dart';

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
      // home: screenWidget,
      // home: const MyAnimatedController(),
      home: const MyAnimatedOpacity(),
      // home: const MyGridView(),
      // home: const MyGridViewProducts(),
      // home: const MyListView(),
      // home: const MyListViewUsers(),
      // home: const MyListViewSeparated(),
    );
  }
}
