import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yatra/views/dashboard/history_screen.dart';
import 'package:yatra/views/dashboard/profile_screen.dart';
import 'package:yatra/views/explore_page.dart';

import '../../views/dashboard/home_screen.dart';

class DashScreenController extends GetxController {
  final key = GlobalKey<ScaffoldState>();

  RxList<Widget> pages = RxList([
    HomeScreen(),
    const ExplorePage(),
    const HistoryScreen(),
    ProfileScreen(),
  ]);

  RxInt currentIndex = RxInt(0);
}
