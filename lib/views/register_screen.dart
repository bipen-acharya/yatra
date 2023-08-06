import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:yatra/controller/register_controller.dart';
import 'package:yatra/utils/colors.dart';
import 'package:yatra/utils/custom_text_style.dart';
import 'package:yatra/views/dash_screen.dart';
import 'package:yatra/views/login_screen.dart';
import 'package:yatra/widgets/custom/custom_textfield.dart';
import 'package:yatra/widgets/custom/elevated_button.dart';

import '../widgets/custom/custom_password_fields.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final c = Get.put(RegisterController());

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height / 10,
                    width: Get.width / 2,
                    child: const Image(
                      image: AssetImage("assets/common/logo-black.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "Unforgettable Journeys Await!",
                    style: CustomTextStyles.f16W400(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Create New Account",
                    style: TextStyle(
                      fontFamily: "WorkSans",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Let's start a journey with us",
                    style: CustomTextStyles.f14W400(
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Full Name",
                    style: CustomTextStyles.f14W400(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CustomTextField(
                    // preIconPath: "assets/icons/person.svg",
                    hint: "Full Name",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Email Address",
                    style: CustomTextStyles.f14W400(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CustomTextField(
                    // preIconPath: "assets/icons/person.svg",
                    hint: "Email",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Phone Number",
                    style: CustomTextStyles.f14W400(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const IntlPhoneField(
                    // disableLengthCheck: true,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    languageCode: "en",

                    // onChanged: (phone) {
                    //   // print(phone.completeNumber);
                    // },
                    // onCountryChanged: (country) {
                    //   // print('Country changed to: ' + country.name);
                    // },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Password",
                    style: CustomTextStyles.f14W400(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Obx(
                    () => CustomPasswordField(
                      hint: "Password",
                      eye: c.passwordObscure.value,
                      onEyeClick: c.onEyeCLick,
                      controller: c.passwordController,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Confirm Password",
                    style: CustomTextStyles.f14W400(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Obx(
                    () => CustomPasswordField(
                      hint: "Confirm Password",
                      eye: c.passwordObscure.value,
                      onEyeClick: c.onEyeCLick,
                      controller: c.passwordController,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomElevatedButton(
                    title: 'Register',
                    onTap: () {
                      Get.offAll(() => DashScreen());
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: CustomTextStyles.f14W400(),
                      ),
                      InkWell(
                        onTap: () {
                          Get.off(LogInScreen());
                        },
                        child: Text(
                          " Log In",
                          style: CustomTextStyles.f14W400(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
