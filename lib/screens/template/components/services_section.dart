// import 'package:flutter/material.dart';
//
// import '../../../components/service_card.dart';
//
// class ServicesSection extends StatelessWidget {
//   const ServicesSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final services = [
//       {'icon': Icons.build, 'title': 'Carpentry'},
//       {'icon': Icons.plumbing, 'title': 'Plumbing'},
//       {'icon': Icons.electrical_services, 'title': 'Electric'},
//       {'icon': Icons.format_paint, 'title': 'Painting'},
//       {'icon': Icons.account_balance, 'title': 'Flooring'},
//       {'icon': Icons.ac_unit, 'title': 'HVAC'},
//       {'icon': Icons.dry, 'title': 'Drywall'},
//     ];
//
//     return Container(
//       color: Colors.white,
//       padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Text(
//             'Our Services',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 32,
//               fontWeight: FontWeight.bold,
//               color: Theme.of(context).primaryColor,
//             ),
//           ),
//           const SizedBox(height: 16),
//           GridView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 1.5,
//               mainAxisSpacing: 16,
//               crossAxisSpacing: 16,
//             ),
//             itemCount: services.length,
//             itemBuilder: (context, index) {
//               return ServiceCard(
//                 icon: services[index]['icon'] as IconData,
//                 title: services[index]['title'] as String,
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
