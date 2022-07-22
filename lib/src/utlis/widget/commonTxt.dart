import 'package:flutter/material.dart';
import 'package:test/src/utlis/theme/color.dart';

class CommonText extends StatelessWidget {
  final String text;
  final String fontFamily;
  final Color color;
  final FontWeight weight;
  final double fontSize;
  final TextAlign textAlign;
  final double lineHeight;
  final double letterSpacing;
  const CommonText({
    Key? key,
    required this.text,
    this.color = gPrimaryBlackColor,
    this.fontFamily = 'SFProText',
    this.weight = FontWeight.w400,
    this.fontSize = 18.0,
    this.textAlign = TextAlign.left,
    this.letterSpacing = 1.0,
    this.lineHeight = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: weight,
        fontSize: fontSize,
        height: lineHeight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
