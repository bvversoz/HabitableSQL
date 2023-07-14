// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../styles/text_styles.dart';

class Availability extends StatefulWidget {
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  Availability({
    Key? key,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  _AvailabilityDropdownState createState() => _AvailabilityDropdownState();
}

class _AvailabilityDropdownState extends State<Availability> {
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
                Icons.schedule,
                // color: Colors.black,
                size: 16,
              ),
              SizedBox(width: 8.0),
              Text(
                'Availability to Volunteer',
                style: CustomTextStyle.roboto12,
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Card(
            elevation: 4,
            shadowColor: Colors.black,
            child: Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: DropdownButtonFormField<String?>(
                style: CustomTextStyle.roboto12.copyWith(color: Colors.black),
                value: widget.selectedValue,
                onChanged: widget.onChanged,
                items: [
                  DropdownMenuItem<String?>(
                    value: '',
                    child: Text('No selection'),
                  ),
                  DropdownMenuItem<String?>(
                    value: 'Available on weekdays',
                    child: Text('Available on weekdays'),
                  ),
                  DropdownMenuItem<String?>(
                    value: 'Available on weekends',
                    child: Text('Available on weekends'),
                  ),
                  DropdownMenuItem<String?>(
                    value: 'Flexible availability',
                    child: Text('Flexible availability'),
                  ),
                ],
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
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
