// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBarTitle extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomAppBarTitle({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title,
          style: GoogleFonts.raleway(
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'DancingScript',
              color: Colors.white,
              letterSpacing: 2,
              shadows: [
                Shadow(
                  color: Color(0xFFEA9E18),
                  offset: Offset(4, 2),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
      ],
    );
  }
}
