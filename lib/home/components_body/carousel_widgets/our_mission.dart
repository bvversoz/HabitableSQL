
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../mission_statement.dart';


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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MissionStatementIcon(
                icon: Icons.language,
                color: Colors.white,
              ),
              MissionStatementIcon(
                icon: Icons.electric_bolt,
                color: Colors.white,
              ),
              MissionStatementIcon(
                icon: Icons.favorite,
                color: Colors.white,
              ),
              MissionStatementIcon(
                icon: Icons.church,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(
            color: Colors.white,
            height: 1,
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: Card(
              shadowColor: Colors.black,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'We empower individuals experiencing homelessness through affordable housing, comprehensive support, and resources, fostering a stronger community',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
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
