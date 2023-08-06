// import 'package:flutter/material.dart';
// import 'package:yatra/models/places.dart';

// import '../data/places_dummy_data.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child:
//          ListView.builder(
//           itemCount: travelPalces.length,
//           itemBuilder: (context, index) {
//             TravelPlaces travel = travelPalces[index];
//             return ContainerWidget(
//               image: travel.imgAddress,
//               model: travel.model,
//               name: travel.name,
//               price: travel.price,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class ContainerWidget extends StatelessWidget {
//   const ContainerWidget({
//     super.key,
//     required this.image,
//     required this.price,
//     required this.name,
//     required this.model,
//   });

//   final String image;
//   final String price;
//   final String name;
//   final String model;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(19),
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.blueGrey,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       height: 100,
//       width: double.infinity,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(100),
//                 child: CircleAvatar(
//                   radius: 40,
//                   child: Image(
//                     image: NetworkImage(image),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(name),
//                   Text(model),
//                 ],
//               ),
//             ],
//           ),
//           const Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Name"),
//               Text("Roll No"),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
