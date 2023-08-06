import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          physics: const ScrollPhysics(), 
          itemCount: 17,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // mainAxisExtent: 150,
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemBuilder: (context, index) {
            return Container(
              height: 80,
              width: 80,
              color: Colors.amber,
            );
          },
        ),
      ),
    );
  }
}
