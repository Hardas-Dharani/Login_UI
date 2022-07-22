import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:test/src/utlis/theme/color.dart';
import 'package:test/src/utlis/widget/commonTxt.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({Key? key, required this.label, required this.onTap})
      : super(key: key);
  final String label;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(9),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF1976D2),
                    Color(0xFF0D47A1),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
              minimumSize: Size(Get.width, 60),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: onTap,
            child: CommonText(
              text: label,
              fontSize: 16,
              color: gPrimaryWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
