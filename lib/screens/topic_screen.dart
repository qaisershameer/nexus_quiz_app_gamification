import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../custom_widgets/my_app_button_icon.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key, required this.onSelectTopic});
  final void Function(int topicNumber) onSelectTopic;

  void chooseTopic(int topicNumber) {
    onSelectTopic(topicNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Gamification App'),
        centerTitle: true,
        backgroundColor: Colors.green.shade800,
        actions: [
          IconButton(
            onPressed: () => chooseTopic(10),
            icon: const Icon(
              Icons.home,
              size: 35,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
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
            Text(
              'Learn Widgets',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 16.0),
            MyAppButtonIcon(
              myOnPressed: () => chooseTopic(1),
              buttonText: 'Animated Controller',
              buttonIcon: const Icon(Icons.ac_unit),
            ),
            const SizedBox(height: 4.0),
            MyAppButtonIcon(
              myOnPressed: () => chooseTopic(2),
              buttonText: 'Animated Opacity',
              buttonIcon: const Icon(Icons.ac_unit),
            ),
            const SizedBox(height: 4.0),
            MyAppButtonIcon(
              myOnPressed: () => chooseTopic(3),
              buttonText: 'Animated Padding',
              buttonIcon: const Icon(Icons.ac_unit),
            ),
            const SizedBox(height: 4.0),
            MyAppButtonIcon(
              myOnPressed: () => chooseTopic(4),
              buttonText: 'Animated Position',
              buttonIcon: const Icon(Icons.ac_unit),
            ),
            const SizedBox(height: 16.0),
            MyAppButtonIcon(
              myOnPressed: () => chooseTopic(5),
              buttonText: 'Grid View Count / Extent / Builder',
              buttonIcon: const Icon(Icons.settings),
            ),
            const SizedBox(height: 4.0),
            MyAppButtonIcon(
              myOnPressed: () => chooseTopic(6),
              buttonText: 'Grid View Builder => Products',
              buttonIcon: const Icon(Icons.settings),
            ),
            const SizedBox(height: 16.0),
            MyAppButtonIcon(
              myOnPressed: () => chooseTopic(7),
              buttonText: 'List View Builder',
              buttonIcon: const Icon(Icons.account_balance),
            ),
            const SizedBox(height: 4.0),
            MyAppButtonIcon(
              myOnPressed: () => chooseTopic(8),
              buttonText: 'List View Separated',
              buttonIcon: const Icon(Icons.account_balance),
            ),
            const SizedBox(height: 4.0),
            MyAppButtonIcon(
              myOnPressed: () => chooseTopic(9),
              buttonText: 'List View Builder => Users',
              buttonIcon: const Icon(Icons.account_balance),
            ),
            const SizedBox(height: 16.0),
            MyAppButtonIcon(
              myOnPressed: () => chooseTopic(10),
              buttonText: 'Back To Home',
              buttonIcon: const Icon(Icons.home),
            ),
          ],
        ),
      ),
    );
  }
}
