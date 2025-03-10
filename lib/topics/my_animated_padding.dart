import 'package:flutter/material.dart';
import '../custom_widgets/my_app_button_filled.dart';
import '../custom_widgets/my_app_button_icon.dart';

class MyAnimatedPadding extends StatefulWidget {
  const MyAnimatedPadding({super.key, required this.home, required this.topics});
  final void Function() home;
  final Function() topics;

  @override
  State<MyAnimatedPadding> createState() => _MyAnimatedPaddingState();
}

class _MyAnimatedPaddingState extends State<MyAnimatedPadding> {
  double _padding = 2.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated padding'),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedPadding(
                  curve: Curves.decelerate,
                  padding: EdgeInsets.all(_padding),
                  duration: const Duration(seconds: 1),
                  child: Container(
                    width: 75,
                    height: 75,
                    color: Colors.deepOrange.shade900,
                    child: const Center(child: Text('01', style: TextStyle(color: Colors.white, fontSize: 36),)),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  curve: Curves.easeInCirc,
                  padding: EdgeInsets.all(_padding),
                  duration: const Duration(seconds: 1),
                  child: Container(
                    height: 75,
                    width: 75,
                    color: Colors.blue,
                    child: const Center(child: Text('02', style: TextStyle(color: Colors.white, fontSize: 36),)),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  curve: Curves.easeInCubic,
                  padding: EdgeInsets.all(_padding) ,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    width: 75,
                    height: 75,
                    color: Colors.red,
                    child: const Center(child: Text('03', style: TextStyle(color: Colors.white, fontSize: 36),)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            // Row Number 02
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedPadding(
                  curve: Curves.elasticIn,
                  padding: EdgeInsets.all(_padding) ,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    width: 75,
                    height: 75,
                    color: Colors.deepPurple.shade900,
                    child: const Center(child: Text('04', style: TextStyle(color: Colors.white, fontSize: 36),)),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding) ,
                  curve: Curves.elasticInOut,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    height: 75,
                    width: 75,
                    color: Colors.green.shade900,
                    child: const Center(child: Text('05', style: TextStyle(color: Colors.white, fontSize: 36),)),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  curve: Curves.bounceInOut,
                  padding: EdgeInsets.all(_padding),
                  duration: const Duration(seconds: 1),
                  child: Container(
                    width: 75,
                    height: 75,
                    color: Colors.deepPurple.shade900,
                    child: const Center(child: Text('06', style: TextStyle(color: Colors.white, fontSize: 36),)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            // Row Number 03
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding),
                  duration: const Duration(seconds: 1),
                  child: Container(
                    width: 75,
                    height: 75,
                    color: Colors.red,
                    child: const Center(child: Text('07', style: TextStyle(color: Colors.white, fontSize: 36),)),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding),
                  duration: const Duration(seconds: 1),
                  child: Container(
                    height: 75,
                    width: 75,
                    color: Colors.blue,
                    child: const Center(child: Text('08', style: TextStyle(color: Colors.white, fontSize: 36),)),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                AnimatedPadding(
                  padding: EdgeInsets.all(_padding),
                  duration: const Duration(seconds: 1),
                  child: Container(
                    width: 75,
                    height: 75,
                    color: Colors.deepOrange.shade900,
                    child: const Center(child: Text('09', style: TextStyle(color: Colors.white, fontSize: 36),)),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16.0,),

            MyAppButtonFilled(
              myOnPressed: () {
                setState(() {
                  _padding = _padding == 2.0 ? 24.0 : 2.0;
                });
              },
              buttonText: 'Change Padding',
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
