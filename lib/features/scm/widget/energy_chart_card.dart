// import 'package:flutter/material.dart';
//
// class EnergyChartCard extends StatelessWidget {
//   const EnergyChartCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(16),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(14),
//         border: Border.all(
//           color: const Color(0xFFB8BEDD),
//           width: 1.2,
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//
//           /// HEADER
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: const [
//               Text(
//                 'Energy Chart',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFF0A0F44),
//                 ),
//               ),
//               Text(
//                 '5.53 kw',
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.w700,
//                   color: Color(0xFF0A0F44),
//                 ),
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 16),
//
//           /// DATA A
//           Container(
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: const Color(0xFFB8BEDD)),
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const CircleAvatar(
//                   radius: 5,
//                   backgroundColor: Color(0xFF007AFF),
//                 ),
//                 const SizedBox(width: 10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     Text(
//                       'Data A',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xFF0A0F44),
//                       ),
//                     ),
//                     SizedBox(height: 6),
//                     Text('Data   : 2798.50 (29.53%)'),
//                     Text('Cost   : 35689 ৳'),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//
//           const SizedBox(height: 10),
//
//           /// DATA B
//           Container(
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: const Color(0xFFB8BEDD)),
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const CircleAvatar(
//                   radius: 5,
//                   backgroundColor: Color(0xFF5AC8FA),
//                 ),
//                 const SizedBox(width: 10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     Text(
//                       'Data B',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xFF0A0F44),
//                       ),
//                     ),
//                     SizedBox(height: 6),
//                     Text('Data   : 72598.50 (35.39%)'),
//                     Text('Cost   : 5259689 ৳'),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//
//           const SizedBox(height: 10),
//
//           /// DATA C
//           Container(
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: const Color(0xFFB8BEDD)),
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const CircleAvatar(
//                   radius: 5,
//                   backgroundColor: Color(0xFF8E44FF),
//                 ),
//                 const SizedBox(width: 10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     Text(
//                       'Data C',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xFF0A0F44),
//                       ),
//                     ),
//                     SizedBox(height: 6),
//                     Text('Data   : 6598.36 (83.90%)'),
//                     Text('Cost   : 5698756 ৳'),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//
//           const SizedBox(height: 10),
//
//           /// DATA D
//           Container(
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: const Color(0xFFB8BEDD)),
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const CircleAvatar(
//                   radius: 5,
//                   backgroundColor: Color(0xFFFF9500),
//                 ),
//                 const SizedBox(width: 10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     Text(
//                       'Data D',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xFF0A0F44),
//                       ),
//                     ),
//                     SizedBox(height: 6),
//                     Text('Data   : 6598.26 (36.59%)'),
//                     Text('Cost   : 356987 ৳'),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
