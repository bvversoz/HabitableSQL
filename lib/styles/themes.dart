
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';



class CustomTheme {
  static ThemeData getTheme() {
    return ThemeData(
      primaryColor: Color(0xFFF6E3A4),
      hintColor: Colors.grey,
      scaffoldBackgroundColor: Color(0xFF9ECBF1),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF4446A3),
        foregroundColor: Colors.white,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: Color(0xFF4446A3),
      ),
      iconTheme: IconThemeData(
        color: Color(0xFFF6E3A4),
        size: 30,
      ),
    );
  }
}


