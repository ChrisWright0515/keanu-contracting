// import 'package:flutter/material.dart';
//
// class ServiceCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//
//   const ServiceCard({
//     super.key,
//     required this.icon,
//     required this.title,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       margin: const EdgeInsets.all(8.0),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(
//               icon,
//               size: 48,
//               color: Theme.of(context).primaryColor,
//             ),
//             const SizedBox(height: 16),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Theme.of(context).textTheme.bodyMedium!.color,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
