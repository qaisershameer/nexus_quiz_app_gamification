import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({super.key});

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
        backgroundColor: Colors.orange.shade200,
      ),
      body: Center(
        child: Column(
          children: [
            Text('THIS IS GRID VIEW SCREEN'),
          ],
        ),
      ),
    );
  }
}
