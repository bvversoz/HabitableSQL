import 'package:flutter/material.dart';

class CustomButtonStyle {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.blue, // Change the button color to your desired color
    onPrimary: Colors.white, // Change the text color to white
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    padding: EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 24,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 4,
  );

  static ButtonStyle textButtonStyle = TextButton.styleFrom(
    primary: Colors.blue, // Change the text color to your desired color
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
