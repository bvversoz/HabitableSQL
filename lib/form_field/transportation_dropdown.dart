// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../styles/text_styles.dart';

class TechFieldDropdown extends StatefulWidget {
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  TechFieldDropdown({
    Key? key,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  _TechFieldDropdownState createState() => _TechFieldDropdownState();
}

class _TechFieldDropdownState extends State<TechFieldDropdown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.drive_eta_rounded,
                size: 16,
              ),
              SizedBox(width: 8.0),
              Text(
                'Do you have transportation?',
                style: CustomTextStyle.roboto12,
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Card(
            elevation: 4,
            shadowColor: Colors.black,
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(8.0),
            // ),
            child: Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: DropdownButtonFormField<String?>(
                value: widget.selectedValue,
                onChanged: widget.onChanged,
                style: CustomTextStyle.roboto12,
                dropdownColor: Colors.white,
                items: [
                  DropdownMenuItem<String?>(
                    value: '',
                    child: Text('No selection'),
                  ),
                  DropdownMenuItem<String?>(
                    value: 'Yes',
                    child: Text('Yes'),
                  ),
                  DropdownMenuItem<String?>(
                    value: 'Yes & willing to carpool others',
                    child: Text('Yes & willing to carpool others'),
                  ),
                  DropdownMenuItem<String?>(
                    value: 'No',
                    child: Text('No'),
                  ),
                  DropdownMenuItem<String?>(
                    value: 'No but willing to carpool with others',
                    child: Text('No but willing to carpool with others'),
                  ),
                ],
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
