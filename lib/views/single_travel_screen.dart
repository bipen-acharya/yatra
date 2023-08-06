import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleTravelScreen extends StatelessWidget {
  const SingleTravelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height / 3.2,
            child: Image.network(
              'https://prod-virtuoso.dotcmscloud.com/dA/188da7ea-f44f-4b9c-92f9-6a65064021c1/heroImage1/PowerfulReasons_hero.jpg',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Lakeside"),
          const Text("Lakeside"),
          const Text("Lakeside"),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  child: Image(
                    image: const NetworkImage(
                      "https://prod-virtuoso.dotcmscloud.com/dA/188da7ea-f44f-4b9c-92f9-6a65064021c1/heroImage1/PowerfulReasons_hero.jpg",
                    ),
                    fit: BoxFit.fill,
                    height: Get.height / 9,
                    width: Get.width / 4,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  child: Image(
                    image: const NetworkImage(
                      "https://prod-virtuoso.dotcmscloud.com/dA/188da7ea-f44f-4b9c-92f9-6a65064021c1/heroImage1/PowerfulReasons_hero.jpg",
                    ),
                    fit: BoxFit.fill,
                    height: Get.height / 9,
                    width: Get.width / 4,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  child: Image(
                    image: const NetworkImage(
                      "https://prod-virtuoso.dotcmscloud.com/dA/188da7ea-f44f-4b9c-92f9-6a65064021c1/heroImage1/PowerfulReasons_hero.jpg",
                    ),
                    fit: BoxFit.fill,
                    height: Get.height / 9,
                    width: Get.width / 4,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Overview"),
          const Text(
            "Reloaded 1 of 1403 libraries in 202ms (compile: 24 ms, reload: 85 ms, reassemble: 77 ms).Reloaded 1 of 1403 libraries in 208ms (compile: 25 ms, reload: 84 ms, reassemble: 84 ms). Reloaded 1 of 1403 libraries in 183ms (compile: 14 ms, reload: 77 ms, reassemble: 80 ms). Reloaded 1 of 1403 libraries in 188ms (compile: 23 ms, reload: 70 ms, reassemble: 82 ms).          ",
            textAlign: TextAlign.justify,
          ),
          const Text("Review"),
        ],
      ),
    );
  }
}
