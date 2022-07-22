import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreenController extends GetxController {
  final isPasswordVisible = true.obs;
  String initialCountry = 'US';
  TextEditingController txtcontroller = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'US');
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  final loginKey = GlobalKey<FormState>();
  String? validateCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter valid code';
    } else {
      return null;
    }
  }

  final visable = false.obs;
  final visables = false.obs;
  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 750)).whenComplete(
      () => visables.value = true,
    );
    Future.delayed(const Duration(milliseconds: 800)).whenComplete(
      () => visable.value = true,
    );

    super.onReady();
  }

  showPassWord() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  // Login Controller by API
  // Future<Map<String, dynamic>> loginAPIController() async {
  // var loginresponse = await AuthREPO().login(codectr.text);
  // return loginresponse;
  // }

  final rememberMe = false.obs;
  ontoggle() => rememberMe(!rememberMe.value);
}
