// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
//
// import 'package:flutter/material.dart';
//
// class CustomButtonStyle {
//   static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
//     primary: Colors.blue, // Change the button color to your desired color
//     onPrimary: Colors.white, // Change the text color to white
//     textStyle: TextStyle(
//       fontSize: 18,
//       fontWeight: FontWeight.bold,
//     ),
//     padding: EdgeInsets.symmetric(
//       vertical: 16,
//       horizontal: 24,
//     ),
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(8),
//     ),
//     elevation: 4,
//   );
//
//   static ButtonStyle textButtonStyle = TextButton.styleFrom(
//     primary: Colors.blue, // Change the text color to your desired color
//     textStyle: TextStyle(
//       fontSize: 18,
//       fontWeight: FontWeight.bold,
//     ),
//     padding: EdgeInsets.zero,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(8),
//     ),
//   );
// }
//
//
// class BottomSocialsContainer extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return      Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3), // changes the position of the shadow
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//         child: Text(
//           'Socials',
//           style: TextStyle(
//             fontSize: 12,
//             fontWeight: FontWeight.w100,
//             color: Colors.black,
//             letterSpacing: 2,
//           ),
//         ),
//       ),
//     );
//   }
// }
// class BottomSocialsContainer extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return      Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3), // changes the position of the shadow
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//         child: Text(
//           'Organizational Focus',
//           style: TextStyle(
//             fontSize: 12,
//             fontWeight: FontWeight.w100,
//             color: Colors.black,
//             letterSpacing: 2,
//           ),
//         ),
//       ),
//     );
//   }
// }
