// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/styles/resume_styling_classes.dart';
import 'package:flutter/material.dart';

class MissionStatement extends StatefulWidget {
  @override
  _MissionStatementState createState() => _MissionStatementState();
}

class _MissionStatementState extends State<MissionStatement> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Get the current theme

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Material(
              type: MaterialType.transparency,
              child: Chip(
                elevation: 4,
                shadowColor: Colors.white,
                backgroundColor: Color(0xFFB2D3F1),
                label: TextButton(
                  style: TextButton.styleFrom(
                    primary: theme.primaryColor, // Use the primary color from the theme
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Our Mission',
                        style: TextStyle(
                          fontFamily: 'DancingScript',
                          color: Color(0xFF313893),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.info,
                        size: 20,
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: isVisible,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              shadowColor: Colors.white,
              color: Color(0xFF4446A3),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_upward),
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              isVisible = false;
                            });
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Ink(
                              decoration: ShapeDecoration(
                                color: Color(0xFFB2D3F1),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.electrical_services_outlined,
                                  color: Color(0xFFFF9B28),
                                ),
                              ),
                            ),
                            Ink(
                              decoration: ShapeDecoration(
                                color: Color(0xFFB2D3F1),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.handshake_outlined,
                                  color: Color(0xFFFF9B28),
                                ),
                              ),
                            ),
                            Ink(
                              decoration: ShapeDecoration(
                                color: Color(0xFFB2D3F1),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Color(0xFFFF9B28),
                                ),
                              ),
                            ),
                            Ink(
                              decoration: ShapeDecoration(
                                color: Color(0xFFB2D3F1),
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.church_outlined,
                                  color: Color(0xFFFF9B28),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "We are dedicated to empowering individuals experiencing homelessness by helping them find affordable housing and providing comprehensive support. Together, we create a compassionate environment where everyone has access to safe and stable housing. Through counseling, job assistance, skills training, and essential resources, we empower individuals and families to transform their lives and build a stronger community.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFFF6E3A4)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
