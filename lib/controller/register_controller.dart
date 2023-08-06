import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{

   RxBool passwordObscure = true.obs;

  final passwordController = TextEditingController();

  void onEyeCLick() {
    passwordObscure.value = !passwordObscure.value;
  }
}