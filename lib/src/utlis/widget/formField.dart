import 'package:flutter/material.dart';
import 'package:test/src/utlis/theme/color.dart';

class TextEditFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String fontFamily;
  final double fontsize;
  final double containersize;
  final FontWeight txtweight;
  final FontWeight hintweight;
  final double hintSize;
  final Color hintColor;
  final bool pass;
  final bool changeicon;
  final Function()? onTap;
  final Function(String)? onChanged;
  final String prefixUrl;
  final int minLines;

  const TextEditFormField({
    Key? key,
    required this.controller,
    this.hintText = '',
    this.containersize = 60,
    this.txtweight = FontWeight.w400,
    this.hintweight = FontWeight.w500,
    this.hintSize = 15.0,
    this.fontsize = 15.0,
    this.hintColor = gPrimaryBlackColor,
    this.fontFamily = 'SFProText',
    this.minLines = 1,
    this.onTap,
    this.onChanged,
    this.changeicon = false,
    this.prefixUrl = "",
    this.pass = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: gPrimaryBlackColor, width: .85)),
      height: containersize,
      alignment: Alignment.center,
      child: TextFormField(
        controller: controller,
        cursorColor: gPrimaryBlackColor,
        obscureText: pass,
        minLines: minLines,
        maxLines: minLines,
        textAlignVertical: TextAlignVertical.top,
        style: TextStyle(
            // color: gPrimaryColor,
            fontFamily: fontFamily,
            fontWeight: txtweight,
            fontSize: fontsize),
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: prefixUrl.isNotEmpty
                ? GestureDetector(
                    onTap: onTap,
                    child: Image.asset(
                      prefixUrl,
                      height: 20,
                    ),
                  )
                : const SizedBox(),
            suffixIconConstraints: prefixUrl.isNotEmpty
                ? const BoxConstraints(maxWidth: 35, minWidth: 35)
                : const BoxConstraints(maxWidth: 0, minWidth: 0),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 5.0, vertical: 14),
            hintStyle: TextStyle(
                color: hintColor.withOpacity(0.6),
                fontFamily: fontFamily,
                fontSize: hintSize,
                fontWeight: hintweight),
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            alignLabelWithHint: true),
      ),
    );
  }
}
