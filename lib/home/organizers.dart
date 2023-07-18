// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AvatarRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
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
                    backgroundImage: AssetImage('rev_owen.png'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Owen C. Thompson',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Dean of Christ Church',
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
                    'Brian Blayer',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Canon Missioner',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('george.png'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Dr. George Hill',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Canon for Development',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),

       SizedBox(height: 20,),

        ],
      ),
    );
  }
}
