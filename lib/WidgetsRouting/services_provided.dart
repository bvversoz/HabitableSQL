
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';

import '../home/components_appbar/title.dart';
import '../styles/elevated_widget_class.dart';

class ServicesProvidedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4446A3),
        title: CustomAppBarTitle(
          title: 'Our Services',
          icon: Icons.build_rounded,
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
                icon: Icons.home,
                text: 'Access to Affordable Housing Options:',
                content:
                'We provide individuals experiencing homelessness with access to safe and affordable housing options.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.groups,
                text: 'Case Management:',
                content:
                'Our organization offers case management services to support individuals in their journey towards stability and independence.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.school,
                text: 'Counseling Services:',
                content:
                'We provide counseling services to address the emotional and mental health needs of individuals experiencing homelessness.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.work,
                text: 'Job Assistance and Skills Training:',
                content:
                'Our organization offers job assistance and skills training programs to help individuals develop valuable skills and secure employment.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.local_hospital,
                text: 'Healthcare Connections:',
                content:
                'We connect individuals with essential healthcare resources and services to ensure their overall well-being.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.school_outlined,
                text: 'Education Support:',
                content:
                'We provide support and resources for educational opportunities, empowering individuals to improve their knowledge and skills.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.attach_money,
                text: 'Financial Support:',
                content:
                'Our organization offers financial support and resources to help individuals achieve stability and overcome financial challenges.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
