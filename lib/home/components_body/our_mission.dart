
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../mission_statement.dart';
import 'lowerNav_body.dart';


class OurMission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.white,
      color: Color(0xFF4446A3).withOpacity(0.4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MissionStatementIcon(
                icon: Icons.language,
                color: Colors.greenAccent,
              ),
              MissionStatementIcon(
                icon: Icons.electric_bolt,
                color: Colors.yellowAccent,
              ),
              MissionStatementIcon(
                icon: Icons.favorite,
                color: Colors.redAccent,
              ),
              MissionStatementIcon(
                icon: Icons.church,
                color: Colors.black87,
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(
            color: Colors.white,
            height: 1,
          ),
          SizedBox(height: 10),
          Card(
            shadowColor: Colors.black,
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "We are dedicated to empowering individuals experiencing homelessness by helping them find affordable housing and providing comprehensive support. Together, we create a compassionate environment where everyone has access to safe and stable housing. Through counseling, job assistance, skills training, and essential resources, we empower individuals and families to transform their lives and build a stronger community.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ),
          ),

          SizedBox(height: 10),
        ],
      ),
    );
  }
}
