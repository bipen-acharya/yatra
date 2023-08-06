import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yatra/utils/colors.dart';
import 'package:yatra/utils/custom_text_style.dart';

import '../../controller/dashboard/home_screen_controller.dart';
import '../single_travel_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });

  final c = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Yatra",
              style: CustomTextStyles.f16W400(),
            ),
            Text(
              "Explore Your dream with us",
              style: CustomTextStyles.f12W400(),
            ),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      // drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Popular Travels",
                style: CustomTextStyles.f16W400(),
              ),
              Column(
                children: [
                  CarouselSlider(
                    items: c.imageSliders,
                    carouselController: c.controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.5,
                        onPageChanged: (index, reason) {
                          c.current.value = index;
                        }),
                  ),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: c.imgList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => c.controller.animateToPage(entry.key),
                          child: Container(
                            width: 5,
                            height: 5,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(c.current.value == entry.key
                                        ? 0.9
                                        : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: c.category.length,
                  itemBuilder: (context, index) {
                    TravelCategory category = c.category[index];
                    return Obx(() {
                      final selected = c.selectedIndex.value == category.id;
                      return InkWell(
                        onTap: () {
                          c.selectedIndex.value = category.id;
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: selected ? Colors.red : Colors.white,
                              ),
                            ),
                          ),
                          child: Text(
                            category.name,
                            style: CustomTextStyles.f14W400(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      );
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => const SingleTravelScreen());
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 8, right: 8, left: 8),
                            height: Get.height / 7,
                            width: Get.width / 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://www.discoveryworldtrekking.com/media/3064/Screen-Shot-2022-09-22-at-14.55.07.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 2.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "LakeSide",
                                        style: CustomTextStyles.f12W400(),
                                      ),
                                      Text(
                                        "LakeSide",
                                        style: CustomTextStyles.f12W400(),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.more_vert,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin:
                              const EdgeInsets.only(top: 8, right: 8, left: 8),
                          height: Get.height / 7,
                          width: Get.width / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://www.discoveryworldtrekking.com/media/3064/Screen-Shot-2022-09-22-at-14.55.07.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Get.width / 2.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "LakeSide",
                                      style: CustomTextStyles.f12W400(),
                                    ),
                                    Text(
                                      "LakeSide",
                                      style: CustomTextStyles.f12W400(),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.more_vert,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin:
                              const EdgeInsets.only(top: 8, right: 8, left: 8),
                          height: Get.height / 7,
                          width: Get.width / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://www.discoveryworldtrekking.com/media/3064/Screen-Shot-2022-09-22-at-14.55.07.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Get.width / 2.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "LakeSide",
                                      style: CustomTextStyles.f12W400(),
                                    ),
                                    Text(
                                      "LakeSide",
                                      style: CustomTextStyles.f12W400(),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.more_vert,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "LakeSide",
                    style: CustomTextStyles.f16W400(),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: CustomTextStyles.f16W400(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: const NetworkImage(
                                "https://www.discoveryworldtrekking.com/media/3064/Screen-Shot-2022-09-22-at-14.55.07.png"),
                            height: Get.height / 12,
                            width: Get.width / 5,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: Get.width / 4.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lake Side ",
                                style: CustomTextStyles.f14W400(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "Lake Side Pokhara Lake",
                                style: CustomTextStyles.f12W400(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: const NetworkImage(
                                "https://www.discoveryworldtrekking.com/media/3064/Screen-Shot-2022-09-22-at-14.55.07.png"),
                            height: Get.height / 12,
                            width: Get.width / 5,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: Get.width / 4.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lake Side ",
                                style: CustomTextStyles.f14W400(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "Lake Side Pokhara Lake",
                                style: CustomTextStyles.f12W400(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: const NetworkImage(
                                "https://www.discoveryworldtrekking.com/media/3064/Screen-Shot-2022-09-22-at-14.55.07.png"),
                            height: Get.height / 12,
                            width: Get.width / 5,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: Get.width / 4.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lake Side ",
                                style: CustomTextStyles.f14W400(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "Lake Side Pokhara Lake",
                                style: CustomTextStyles.f12W400(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: const NetworkImage(
                                "https://www.discoveryworldtrekking.com/media/3064/Screen-Shot-2022-09-22-at-14.55.07.png"),
                            height: Get.height / 12,
                            width: Get.width / 5,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: Get.width / 4.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lake Side ",
                                style: CustomTextStyles.f14W400(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "Lake Side Pokhara Lake",
                                style: CustomTextStyles.f12W400(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
