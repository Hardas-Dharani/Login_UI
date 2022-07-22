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
}
