import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yatra/controller/dashboard/dash_screen_controller.dart';
import 'package:yatra/utils/colors.dart';

import '../widgets/custom/custom_bottom_nav_icon.dart';

class DashScreen extends StatelessWidget {
  static const String routeName = "/dash-screen";
  final c = Get.put(DashScreenController());
  DashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: c.key,
      // appBar: AppBar(
      //   backgroundColor: theme.colorScheme.background,
      //   shadowColor: Colors.transparent,
      //   leading: IconButton(
      //     onPressed: () {
      //       c.key.currentState!.openDrawer();
      //     },
      //     icon: Icon(
      //       Icons.menu,
      //       color: theme.colorScheme.onBackground,
      //     ),
      //   ),
      // ),

      body: Obx(() => c.pages[c.currentIndex.value]),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          // color: const Color.fromRGBO(61, 117, 186, 1),
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(40),
          // boxShadow: [
          //   BoxShadow(
          //       blurRadius: 1, spreadRadius: 1, color: theme.colorScheme.shadow
          //       ,
          //       offset: Offset(3, 6))
          // ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => CustomBottomNavIcon(
                title: "Home",
                icon: Icons.home,
                isActive: c.currentIndex.value == 0,
                onTap: () {
                  c.currentIndex.value = 0;
                },
              ),
            ),
            Obx(
              () => CustomBottomNavIcon(
                title: "Favourite",
                icon: Icons.favorite,
                isActive: c.currentIndex.value == 1,
                onTap: () {
                  c.currentIndex.value = 1;
                },
              ),
            ),
            Obx(
              () => CustomBottomNavIcon(
                title: "History",
                icon: Icons.history,
                isActive: c.currentIndex.value == 2,
                onTap: () {
                  c.currentIndex.value = 2;
                },
              ),
            ),
            Obx(
              () => CustomBottomNavIcon(
                title: "Profile",
                icon: Icons.settings,
                isActive: c.currentIndex.value == 3,
                onTap: () {
                  c.currentIndex.value = 3;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
