import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/src/presentation/authScreen/controller/loginScreenController.dart';
import 'package:test/src/utlis/assetConstant.dart';
import 'package:test/src/utlis/theme/color.dart';
import 'package:test/src/utlis/widget/cardWidget.dart';
import 'package:test/src/utlis/widget/commonButton.dart';
import 'package:test/src/utlis/widget/commonTxt.dart';
import 'package:test/src/utlis/widget/formField.dart';
import 'package:test/src/utlis/widget/logo.dart';
import 'package:test/src/utlis/widget/responsive.dart';
import 'package:test/src/utlis/widget/richCommonTxt.dart';

class MainScreenMobileView extends GetView<LoginScreenController> {
  const MainScreenMobileView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: gPrimaryBlackColor,
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.14,
                ),
                const CommonText(
                  text: 'Appointments Schecule',
                  fontSize: 18,
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.034,
            ),
            const CommonText(
              text: 'Jan 05, 2021',
              color: gPrimaryGreyColor,
              fontSize: 12,
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Expanded(
                child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: Get.height * 0.02,
                );
              },
              itemCount: 10,
              itemBuilder: (context, index) {
                return CardWidget();
              },
            ))
          ],
        ),
      ),
    );
  }
}
