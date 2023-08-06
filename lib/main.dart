import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yatra/utils/colors.dart';
import 'package:yatra/views/dashboard/profile_screen.dart';
import 'package:yatra/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
