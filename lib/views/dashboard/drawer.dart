// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:yatra/utils/colors.dart';
// import 'package:yatra/widgets/profile_tile.dart';

// class DrawerScreen extends StatelessWidget {
//   const DrawerScreen({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     var theme = Theme.of(context);
//     return Drawer(
//       backgroundColor: theme.colorScheme.background,
//       child: SafeArea(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 16,
//             ),
//             const SizedBox(
//               height: 16,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Divider(
//                 height: 1,
//                 color: Color(0xFFAAAAAA),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ProfileTile(
//               onTap: () {
//                 Get.back();
//               },
//               leadingIcon: Icons.person_2_outlined,
//               title: "Edit Profile",
//               showTrailing: false,
//             ),
//             ProfileTile(
//               onTap: () {
//                 Get.back();
//               },
//               leadingIcon: Icons.favorite_border,
//               title: "Favorites",
//               showTrailing: false,
//             ),
//             ProfileTile(
//               onTap: () {
//                 Get.back();
//               },
//               leadingIcon: Icons.brightness_6_outlined,
//               title: "Theme",
//               showTrailing: false,
//             ),
//             ProfileTile(
//               onTap: () {
//                 Get.back();
//               },
//               leadingIcon: Icons.lock_outline,
//               title: "Change Password",
//               showTrailing: false,
//             ),
//             ProfileTile(
//               onTap: () {},
//               leadingIcon: Icons.logout,
//               title: "Log Out",
//               showTrailing: false,
//               color: AppColors.errorColor,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
