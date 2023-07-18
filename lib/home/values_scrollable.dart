import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class OrganizationValuesList extends StatelessWidget {
  List<String> organizationValues = [
    'Empowerment',
    'Community',
    'Compassion',
    'Equality',
    'Collaboration',
    'Resilience',
    'Integrity',
    'Innovation',
    'Inclusivity',
    'Sustainability',
    'Justice',
    'Education',
    'Advocacy',
    'Diversity',
    'Empathy',
    'Wellness',
    'Volunteerism',
    'Leadership',
    'Social Impact',
    'Teamwork',
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25, // Adjust the height as needed
      child: Marquee(
        text: organizationValues.join('  •  '), // Join the values with a separator
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.center,
        blankSpace: 20.0, // Adjust the space between chips
        velocity: 80.0, // Adjust the scroll speed
        pauseAfterRound: Duration(seconds: 0), // Pause duration after each round
        showFadingOnlyWhenScrolling: true, // Fade the edges only when scrolling
        fadingEdgeStartFraction: 0.1, // Fraction of width to start fading
        fadingEdgeEndFraction: 0.1, // Fraction of width to end fading
      ),
    );
  }
}
