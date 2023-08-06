import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {

    final keys = GlobalKey<ScaffoldState>();


  RxInt selectedIndex = 1.obs;
  final List<TravelCategory> category = [
    TravelCategory(id: 1, name: "Nep"),
    TravelCategory(id: 2, name: "Nep2"),
    TravelCategory(id: 3, name: "Nep3"),
    TravelCategory(id: 4, name: "Nep4"),
    TravelCategory(id: 5, name: "Nep5"),
    TravelCategory(id: 6, name: "Nep6"),
    TravelCategory(id: 7, name: "Nep7"),
  ];

  RxInt current = RxInt(0);

  final CarouselController controller = CarouselController();

  final List<String> imgList = [
    'https://www.himalayajourneys.com/assets/images/adventure/travel-in-nepal.jpg',
    'https://prod-virtuoso.dotcmscloud.com/dA/188da7ea-f44f-4b9c-92f9-6a65064021c1/heroImage1/PowerfulReasons_hero.jpg',
    'https://www.diabetes.co.uk/wp-content/uploads/2019/01/Untitled-design138-1000x600.jpg',
  ];

  late List<Widget> imageSliders = imgList
      .map((item) => Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 136,
                )),
          ))
      .toList();
}

class TravelCategory {
  final int id;
  final String name;
  TravelCategory({
    required this.id,
    required this.name,
  });
}
