import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:test/src/presentation/authScreen/controller/loginScreenController.dart';
import 'package:test/src/routes/routers.dart';
import 'package:test/src/utlis/assetConstant.dart';
import 'package:test/src/utlis/theme/color.dart';
import 'package:test/src/utlis/widget/commonButton.dart';
import 'package:test/src/utlis/widget/commonTxt.dart';
import 'package:test/src/utlis/widget/formField.dart';
import 'package:test/src/utlis/widget/logo.dart';
import 'package:test/src/utlis/widget/responsive.dart';
import 'package:test/src/utlis/widget/richCommonTxt.dart';

class SignMobileView extends GetView<LoginScreenController> {
  SignMobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const Center(child: Logo(width: 80.49)),
            const SizedBox(height: 30),
            const Center(
              child: CommonText(
                text: "Welcome back to Care Pro!",
                fontSize: 20.0,
                weight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: CommonText(
                text: "Join 1+ millions doctors for free",
                color: gPrimaryGreyColor,
                fontSize: 15.0,
                weight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 70),
            const CommonText(
              text: "Email Address",
              fontSize: 13.0,
              color: gPrimaryBlueColor,
            ),
            const SizedBox(height: 10),
            ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: !Responsive.isMobile()
                        ? double.infinity
                        : Get.width * 1),
                child: TextEditFormField(
                  controller: controller.email,
                  hintText: 'Email',
                  hintColor: Colors.grey.shade700,
                  // prefixUrl: mailIcon,
                  hintSize: 16.0,
                  hintweight: FontWeight.w400,
                )),
            const SizedBox(height: 20),
            const CommonText(
              text: "Mobile Phone",
              fontSize: 13.0,
              color: gPrimaryBlueColor,
            ),
            const SizedBox(height: 10),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: !Responsive.isMobile() ? 400 : Get.width * 1),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(color: gPrimaryBlackColor, width: .85)),
                alignment: Alignment.center,
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {},
                  onInputValidated: (bool value) {},
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(color: Colors.black),
                  initialValue: controller.number,
                  textFieldController: controller.txtcontroller,
                  formatInput: false,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  onSaved: (PhoneNumber number) {},
                ),
              ),
            ),
            const SizedBox(height: 20),
            const CommonText(
              text: "Password",
              fontSize: 13.0,
              color: gPrimaryBlueColor,
            ),
            const SizedBox(height: 10),
            ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: !Responsive.isMobile() ? 400 : Get.width * 1),
                child: TextEditFormField(
                  controller: controller.pass,
                  hintText: 'Password',
                  hintColor: Colors.grey.shade700,
                  prefixUrl: eyeIcon,
                  pass: true,
                  hintSize: 16.0,
                  hintweight: FontWeight.w400,
                )),
            const SizedBox(
              height: 30,
            ),
            const RichCommonThreeText(
                text: 'By clicking Sign Up you are agreeing to the ',
                fontSize1: 15,
                fontSize2: 15,
                fontSize3: 15,
                fontSize: 15,
                text3: ' & ',
                color1: gPrimaryPinkColor,
                color2: gPrimaryPinkColor,
                text1: 'Terms of use',
                text2: ' Privacy Policy'),
            const SizedBox(
              height: 30,
            ),
            CommonButton(
              label: "Sign Up",
              onTap: () {
                Get.toNamed(Routers.mainScreen);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Divider(
                    height: 5,
                    thickness: 5,
                    color: gPrimaryBlackColor,
                  ),
                  CommonText(
                    text: "Or Continue",
                    fontSize: 13.0,
                    color: gPrimaryBlackColor,
                  ),
                  Divider(
                    height: 5,
                    thickness: 5,
                    color: gPrimaryBlackColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 168,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: gPrimaryBlackColor,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-png-dallas-shootings-don-add-are-speech-zones-used-4.png',
                          color: gPrimaryWhiteColor,
                          width: 19,
                        ),
                        SizedBox(
                          width: Get.width * 0.02,
                        ),
                        const CommonText(
                          text: 'Continue With',
                          color: gPrimaryWhiteColor,
                          fontSize: 14,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.17,
                  ),
                  FloatingActionButton(
                      key: Key("google"),
                      heroTag: null,
                      backgroundColor: Colors.redAccent,
                      onPressed: () {},
                      child: Image.asset(
                        googleLoog,
                        width: 35,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                      key: Key("facebook"),
                      heroTag: null,
                      backgroundColor: Colors.white,
                      onPressed: () {},
                      child: Image.network(
                        'https://www.edigitalagency.com.au/wp-content/uploads/Facebook-logo-blue-circle-large-transparent-png.png',
                        color: Colors.blueAccent,
                      )),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
