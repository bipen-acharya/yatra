import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yatra/controller/dashboard/profile_screen_controller.dart';
import 'package:yatra/utils/image_path.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final c = Get.put(ProfileScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: c.pinned.value,
            snap: c.snap.value,
            floating: c.floating.value,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: Image.network(
                  "https://images.unsplash.com/photo-1688315031371-e216dad33add?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80"),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
