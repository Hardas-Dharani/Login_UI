import 'package:flutter/material.dart';
import 'package:test/src/utlis/assetConstant.dart';

class Logo extends StatelessWidget {
  final double width;
  const Logo({Key? key, required this.width, this.assetlogo = assetLogoPng})
      : super(key: key);
  final String assetlogo;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Image.asset(assetlogo),
    );
  }
}
