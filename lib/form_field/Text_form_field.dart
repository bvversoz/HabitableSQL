// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../styles/text_styles.dart';

class FormTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;

  FormTextField({
    required this.controller,
    required this.labelText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: CustomTextStyle.roboto12,
        ),
        SizedBox(height: 8),
        TextField(
          autofocus: true,
          cursorColor: Colors.grey,

          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white, // Set the desired color for the focused outline
                width: 2.0, // Set the desired width for the focused outline
              ),
            ),
            border: OutlineInputBorder(),
            hintText: hintText,
            hintStyle: CustomTextStyle.roboto12,
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
