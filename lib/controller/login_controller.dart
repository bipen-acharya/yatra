import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {
  RxBool passwordObscure = true.obs;

  final passwordController = TextEditingController();

  void onEyeCLick() {
    passwordObscure.value = !passwordObscure.value;
  }
}
