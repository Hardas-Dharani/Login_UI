import 'package:flutter/material.dart';
import 'package:test/src/utlis/theme/color.dart';

class RichCommonThreeText extends StatelessWidget {
  final String text1;
  final String fontFamily1;
  final Color color1;
  final FontWeight weight1;
  final double fontSize1;
  final TextAlign textAlign1;
  final double letterSpacing1;
  final String text3;
  final String fontFamily3;
  final Color color3;
  final FontWeight weight3;
  final double fontSize3;
  final TextAlign textAlign3;
  final double letterSpacing3;
  final String text2;
  final String fontFamily2;
  final Color color2;
  final FontWeight weight2;
  final double fontSize2;
  final TextAlign textAlign2;
  final double letterSpacing2;
  final String text;
  final String fontFamily;
  final Color color;
  final FontWeight weight;
  final double fontSize;
  final TextAlign textAlign;
  final double letterSpacing;
  const RichCommonThreeText({
    Key? key,
    required this.text,
    this.color = gPrimaryBlackColor,
    this.fontFamily = 'SFProText',
    this.weight = FontWeight.w400,
    this.fontSize = 20.0,
    this.textAlign = TextAlign.left,
    this.letterSpacing = 1.0,
    required this.text2,
    this.color2 = gPrimaryBlackColor,
    required this.text1,
    this.color1 = gPrimaryBlackColor,
    this.fontFamily1 = 'SFProText',
    this.weight1 = FontWeight.w400,
    this.fontSize1 = 20.0,
    this.textAlign1 = TextAlign.left,
    this.letterSpacing1 = 1.0,
    required this.text3,
    this.color3 = gPrimaryBlackColor,
    this.fontFamily3 = 'SFProText',
    this.weight3 = FontWeight.w400,
    this.fontSize3 = 20.0,
    this.textAlign3 = TextAlign.left,
    this.letterSpacing3 = 1.0,
    this.fontFamily2 = 'SFProText',
    this.weight2 = FontWeight.w400,
    this.fontSize2 = 20.0,
    this.textAlign2 = TextAlign.left,
    this.letterSpacing2 = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: text,
            style: TextStyle(
              color: color,
              fontFamily: fontFamily,
              fontWeight: weight,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
            ),
          ),
          TextSpan(
              text: text1,
              style: TextStyle(
                color: color1,
                fontFamily: fontFamily1,
                fontWeight: weight1,
                fontSize: fontSize1,
                letterSpacing: letterSpacing1,
              )),
          TextSpan(
              text: text3,
              style: TextStyle(
                color: color3,
                fontFamily: fontFamily3,
                fontWeight: weight3,
                fontSize: fontSize3,
                letterSpacing: letterSpacing3,
              )),
          TextSpan(
              text: text2,
              style: TextStyle(
                color: color2,
                fontFamily: fontFamily2,
                fontWeight: weight2,
                fontSize: fontSize2,
                letterSpacing: letterSpacing2,
              )),
        ],
      ),
    );
  }
}
