// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class BtmNavBar extends StatefulWidget {
//   BtmNavBar({super.key});

//   @override
//   State<BtmNavBar> createState() => _BtmNavBarState();
// }

// class _BtmNavBarState extends State<BtmNavBar> {
//   int index = 1;

//   @override
//   Widget build(BuildContext context) {
//     final items = <Widget>[
//       InkWell(
//           onTap: () {
//             context.go('/');
//           },
//           child: Icon(Icons.home, size: 20)),
//       InkWell(
//           onTap: () {
//             context.go('/favorites');
//           },
//           child: Icon(Icons.favorite, size: 20)),
//       InkWell(
//           onTap: () {
//             context.go('/profile');
//           },
//           child: Icon(Icons.person, size: 20)),
//     ];

//     return Card(
//       child: CurvedNavigationBar(
//         items: items,
//         index: index,
//         onTap: (index) => setState(() => this.index = index),
//       ),
//     );
//   }
// }
