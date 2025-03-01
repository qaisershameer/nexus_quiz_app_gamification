import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAnimatedController extends StatefulWidget {
  const MyAnimatedController({super.key});

  @override
  State<MyAnimatedController> createState() => _MyAnimatedControllerState();
}

class _MyAnimatedControllerState extends State<MyAnimatedController> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation - Animated Controller'),
        backgroundColor: Colors.orange.shade200,
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green, Colors.yellow],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 3),
                    curve: Curves.fastEaseInToSlowEaseOut,
                    height: isExpanded ? 200 : 100,
                    width: isExpanded ? 150 : 50,
                    color: isExpanded ? Colors.green : Colors.deepPurple,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  AnimatedContainer(
                    duration: const Duration(seconds: 3),
                    curve: Curves.easeInOut,
                    height: isExpanded ? 200 : 100,
                    width: isExpanded ? 150 : 50,
                    color: isExpanded ? Colors.yellow : Colors.teal,
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 3),
                    curve: Curves.bounceInOut,
                    height: isExpanded ? 200 : 100,
                    width: isExpanded ? 150 : 50,
                    color: isExpanded ? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  AnimatedContainer(
                    duration: const Duration(seconds: 3),
                    curve: Curves.fastOutSlowIn,
                    height: isExpanded ? 200 : 100,
                    width: isExpanded ? 150 : 50,
                    color: isExpanded ? Colors.cyan : Colors.pink,
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 3),
                    curve: Curves.decelerate,
                    height: isExpanded ? 200 : 100,
                    width: isExpanded ? 150 : 50,
                    color: isExpanded
                        ? Colors.pinkAccent
                        : Colors.deepOrangeAccent,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  AnimatedContainer(
                    duration: const Duration(seconds: 3),
                    curve: Curves.easeInOutCubicEmphasized,
                    height: isExpanded ? 200 : 100,
                    width: isExpanded ? 150 : 50,
                    color: isExpanded ? Colors.deepOrange : Colors.teal,
                  ),
                ],
              ),
              FilledButton(
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                    // print('Button Clicked ${isExpanded}');
                  });
                },
                child: Text(isExpanded ? 'Shrink' : 'Expanded'),
              ),
              Text(
                'Animated Controller Assignment',
                style: GoogleFonts.lato(
                  color: isExpanded ? Colors.black : Colors.red,
                  fontSize: isExpanded ? 16 : 24,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
