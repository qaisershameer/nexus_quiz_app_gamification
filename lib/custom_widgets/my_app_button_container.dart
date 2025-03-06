import 'package:flutter/material.dart';

class MyAppButtonContainerWithText extends StatelessWidget {
  const MyAppButtonContainerWithText({
    super.key,
    required this.myButtonMargin,
    required this.myButtonWidth,
    required this.myButtonHeight,
    required this.myButtonBorderRadius,
    required this.myButtonColor,
    required this.myButtonText,
    required this.myTextColor,
  });

  final double myButtonMargin;
  final double myButtonWidth;
  final double myButtonHeight;
  final double myButtonBorderRadius;
  final Color myButtonColor;
  final String myButtonText;
  final Color myTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(myButtonMargin),
      width: myButtonWidth,
      height: myButtonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(myButtonBorderRadius),
        color: myButtonColor,
      ),
      child: ClipRRect(
        child: Center(
            child: Text(
          myButtonText,
          style: TextStyle(color: myTextColor),
        )),
      ),
    );
  }
}
