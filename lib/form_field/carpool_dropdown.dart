// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../styles/text_styles.dart';

class CarpoolDropdown extends StatefulWidget {
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  CarpoolDropdown({
    Key? key,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CarpoolDropdownState createState() => _CarpoolDropdownState();
}

class _CarpoolDropdownState extends State<CarpoolDropdown> {
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
                Icons.handyman,
                size: 16,
              ),
              SizedBox(width: 8.0),
              Text(
                'Top Skill?',
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
              child: ListView(
                shrinkWrap: true,
                children: [
                  DropdownButtonFormField<String?>(
                    style: CustomTextStyle.roboto12,
                    value: widget.selectedValue,
                    onChanged: widget.onChanged,
                    items: [
                      DropdownMenuItem<String?>(
                        value: '',
                        child: Text('No selection'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'construction',
                        child: Text('Construction'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'landscaping',
                        child: Text('Landscaping'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'event planning',
                        child: Text('Event Planning'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'administration',
                        child: Text('Administration'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'graphic design',
                        child: Text('Graphic Design'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'customer service',
                        child: Text('Customer Service'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'programming',
                        child: Text('Programming'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'carpentry',
                        child: Text('Carpentry'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'plumbing',
                        child: Text('Plumbing'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'electrical work',
                        child: Text('Electrical Work'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'painting',
                        child: Text('Painting'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'roofing',
                        child: Text('Roofing'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'masonry',
                        child: Text('Masonry'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'land surveying',
                        child: Text('Land Surveying'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'project management',
                        child: Text('Project Management'),
                      ),
                      DropdownMenuItem<String?>(
                        value: 'community outreach',
                        child: Text('Community Outreach'),
                      ),
                    ],
                    decoration: InputDecoration(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
