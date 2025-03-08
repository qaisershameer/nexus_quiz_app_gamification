import 'package:flutter/material.dart';
import 'dart:math';

class MyAnimatedPosition extends StatefulWidget {
  const MyAnimatedPosition({super.key, required this.home, required this.topics});
  final void Function() home;
  final Function() topics;

  @override
  State<MyAnimatedPosition> createState() => _MyAnimatedPositionState();
}

class _MyAnimatedPositionState extends State<MyAnimatedPosition> {
  double _angle = 0.0; // Track the rotation angle

  // Function to calculate the position of each container in a circle
  Offset getPosition(double angle, double radius) {
    return Offset(
      radius * cos(angle) + MediaQuery.of(context).size.width / 2 - 75, // Centering the circle
      radius * sin(angle) + MediaQuery.of(context).size.height / 2 - 75, // Centering the circle
    );
  }

  void rotateContainers() {
    setState(() {
      _angle += pi / 2; // Rotate 30 degrees clockwise
    });
  }

  @override
  Widget build(BuildContext context) {
    double radius = 100.0; // Radius of the circular path

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Positioned'),
        backgroundColor: Colors.orange.shade200,
        actions: [
          IconButton(
            onPressed: widget.topics,
            icon: const Icon(Icons.ac_unit,size: 35,color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: widget.topics,
            icon: const Icon(Icons.home,size: 35,color: Colors.black,
            ),
          ),
          const SizedBox(width: 8,),
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(4.0),
          padding: const EdgeInsets.all(4.0),
          width: MediaQuery.of(context).size.width, // Full screen width
          height: MediaQuery.of(context).size.height, // Full screen height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green, Colors.yellow]),
          ),
          child: Stack(
            children: List.generate(12, (index) {
              double angle = (index) * (pi / 6) + _angle; // 360 degrees / 12 items = 30 degrees per item
              Offset position = getPosition(angle, radius);
              return AnimatedPositioned(
                duration: const Duration(seconds: 1),
                left: position.dx,
                top: position.dy,
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: getColorForPosition(index),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}', // Display 1 to 12
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FilledButton(
          onPressed: rotateContainers,
          child: const Text(
            'Rotate Clockwise',
            style: TextStyle(fontSize: 20),
          ),
        ),

      ),
    );
  }

  // Function to assign color based on position
  Color getColorForPosition(int position) {
    switch (position) {
      case 0:
        return Colors.deepOrange.shade900;
      case 1:
        return Colors.blue;
      case 2:
        return Colors.red;
      case 3:
        return Colors.deepPurple.shade900;
      case 4:
        return Colors.green.shade900;
      case 5:
        return Colors.amber.shade700;
      case 6:
        return Colors.teal.shade700;
      case 7:
        return Colors.pink.shade600;
      case 8:
        return Colors.cyan.shade600;
      case 9:
        return Colors.indigo.shade900;
      case 10:
        return Colors.lime.shade700;
      case 11:
        return Colors.brown.shade700;
      default:
        return Colors.black;
    }
  }
}