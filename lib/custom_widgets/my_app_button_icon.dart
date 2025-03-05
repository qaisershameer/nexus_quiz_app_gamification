import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppButtonIcon extends StatelessWidget {
  const MyAppButtonIcon({
    super.key,
    required this.myOnPressed,
    required this.buttonText,
  });

  final void Function() myOnPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(Icons.arrow_forward),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      label: Text(
        buttonText,
        style: GoogleFonts.lato(),
      ),
      onPressed:
          // screen switching
          myOnPressed,
    );
  }
}
