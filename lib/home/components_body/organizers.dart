// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AvatarRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'Organizers',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('brian.png'),
                ),
                SizedBox(height: 8),
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Role 1',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('brian.png'),
                ),
                SizedBox(height: 8),
                Text(
                  'Jane Smith',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Role 2',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('brian.png'),
                ),
                SizedBox(height: 8),
                Text(
                  'David Johnson',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Role 3',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
