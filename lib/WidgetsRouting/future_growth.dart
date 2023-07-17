import 'package:flutter/material.dart';

import '../home/components_appbar/title.dart';
import '../styles/elevated_widget_class.dart';

class PlansForFutureGrowthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4446A3),
        title: CustomAppBarTitle(
          title: 'Our Future',
          icon: Icons.place_outlined,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              ElevatedCard(
                icon: Icons.people,
                text: 'Collaborate with Community Partners:',
                content:
                'In the future, we plan to expand our reach and impact by collaborating with more community partners.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.home_work,
                text: 'Establish Additional Housing Options:',
                content:
                'To further address homelessness, we will work towards establishing additional housing options.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.support_agent,
                text: 'Enhance Support Services:',
                content:
                'We aim to enhance our support services by providing comprehensive resources, counseling, and job assistance.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.timeline,
                text: 'Strengthen Programs and Initiatives:',
                content:
                'To better serve individuals and families experiencing homelessness, we will focus on strengthening our programs and initiatives.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
