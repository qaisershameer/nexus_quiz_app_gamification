import 'package:flutter/material.dart';
import '../custom_widgets/my_app_button_filled.dart';
import '../custom_widgets/my_app_button_icon.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({super.key, required this.home, required this.topics});
  final void Function() home;
  final Function() topics;

  @override
  State<MyAnimatedOpacity> createState() => _MyAnimatedOpacityState();
}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {
  double _opacity = 1.0;
  double _opacity2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Opacity'),
        backgroundColor: Colors.orange.shade200,
        actions: [
          IconButton(
            onPressed: widget.topics,
            icon: const Icon(Icons.ac_unit,size: 35,color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: widget.home,
            icon: const Icon(Icons.home,size: 35,color: Colors.black,
            ),
          ),
          const SizedBox(width: 8,),
        ],
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
                AnimatedOpacity(
                  opacity: _opacity,
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
                AnimatedOpacity(
                  opacity: _opacity2,
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
                AnimatedOpacity(
                  opacity: _opacity,
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
                AnimatedOpacity(
                  opacity: _opacity2,
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
                AnimatedOpacity(
                  opacity: _opacity,
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
                AnimatedOpacity(
                  opacity: _opacity2,
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
                AnimatedOpacity(
                  opacity: _opacity,
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
                AnimatedOpacity(
                  opacity: _opacity2,
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
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 4),
                  child: Container(
                    width: 125,
                    height: 125,
                    color: Colors.deepOrange.shade900,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16.0,),

            MyAppButtonFilled(
              myOnPressed: () {
                setState(() {
                  _opacity = _opacity == 1.0 ? 0.0 : 1.0;
                  _opacity2 = _opacity2 == 0.0 ? 1.0 : 0.0;
                });
              },
              buttonText: 'Change Opacity',
              buttonHeight: 45,
              buttonWidth: 160,
            ),

            const SizedBox(height: 16.0,),

            MyAppButtonIcon(myOnPressed: widget.topics, buttonText: 'Learn More Widgets', buttonIcon: const Icon(Icons.ac_unit)),

          ],
        ),
      ),
    );
  }
}
