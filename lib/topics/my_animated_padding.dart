import 'package:flutter/material.dart';

class MyAnimatedPadding extends StatefulWidget {
  const MyAnimatedPadding({super.key});

  @override
  State<MyAnimatedPadding> createState() => _MyAnimatedPaddingState();
}

class _MyAnimatedPaddingState extends State<MyAnimatedPadding> {
  double _padding = 4.0;
  double _padding2 = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations : Animated padding'),
        backgroundColor: Colors.orange.shade200,
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.all(4.0),
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green, Colors.yellow]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row Number 01
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding) ,
                  duration: const Duration(seconds: 4),
                  child: Container(
                    width: 125,
                    height: 125,
                    color: Colors.deepOrange.shade900,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding) ,
                  duration: const Duration(seconds: 4),
                  child: Container(
                    height: 125,
                    width: 125,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding) ,
                  duration: const Duration(seconds: 4),
                  child: Container(
                    width: 125,
                    height: 125,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            // Row Number 02
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding) ,
                  duration: const Duration(seconds: 4),
                  child: Container(
                    width: 125,
                    height: 125,
                    color: Colors.deepPurple.shade900,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding) ,
                  curve: Curves.bounceInOut,
                  duration: const Duration(seconds: 4),
                  child: Container(
                    height: 125,
                    width: 125,
                    color: Colors.green.shade900,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding) ,
                  duration: const Duration(seconds: 4),
                  child: Container(
                    width: 125,
                    height: 125,
                    color: Colors.deepPurple.shade900,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            // Row Number 03
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding) ,
                  duration: const Duration(seconds: 4),
                  child: Container(
                    width: 125,
                    height: 125,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding) ,
                  duration: const Duration(seconds: 4),
                  child: Container(
                    height: 125,
                    width: 125,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding) ,
                  duration: const Duration(seconds: 4),
                  child: Container(
                    width: 125,
                    height: 125,
                    color: Colors.deepOrange.shade900,
                  ),
                ),
              ],
            ),
            FilledButton(
                onPressed: () {
                  setState(() {
                    _padding = _padding == 10.0 ? 0.0 : 1.0;
                  });
                },
                child: const Text('Change'))
          ],
        ),
      ),
    );
  }
}
