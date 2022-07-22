import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive(
      {Key? key,
      required this.mobile,
      required this.tablet,
      required this.desktop})
      : super(key: key);

  static isMobile() => Get.width < 825;

  static isTablet() => Get.width < 1400 && Get.width > 825;

  static isDesktop() => Get.width >= 1400;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1400) {
        return desktop;
      } else if (constraints.maxWidth > 825) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
