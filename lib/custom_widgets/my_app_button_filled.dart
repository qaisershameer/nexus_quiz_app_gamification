import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppButtonFilled extends StatelessWidget {
  const MyAppButtonFilled({
    super.key,
    required this.myOnPressed,
    required this.buttonText,
    required this.buttonWidth,
    required this.buttonHeight,
  });

  final void Function() myOnPressed;
  final String buttonText;
  final double buttonWidth;
  final double buttonHeight;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.green.shade900,
        minimumSize: Size(buttonWidth, buttonHeight),
      ),
      onPressed: myOnPressed,
      child: Text(
        buttonText,
        style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
