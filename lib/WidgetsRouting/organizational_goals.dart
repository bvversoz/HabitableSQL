
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import '../home/bottom_bar.dart';
import '../home/components_appbar/title.dart';
import '../styles/elevated_widget_class.dart';

class OrganizationalGoalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4446A3),
        title: CustomAppBarTitle(
          title: 'Our Goals',
          icon: Icons.military_tech_outlined,
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
                text: 'Reduce Homelessness:',
                content:
                'Our primary goal is to reduce homelessness in the community by providing access to safe and affordable housing options.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.business,
                text: 'Increase Access to Affordable Housing:',
                content:
                'We aim to increase access to affordable housing by collaborating with community partners and establishing additional housing options.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.support,
                text: 'Provide Comprehensive Support Services:',
                content:
                'We are committed to providing comprehensive support services such as counseling, job assistance, skills training, and access to essential resources.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.account_balance,
                text: 'Promote Long-term Stability:',
                content:
                'Our goal is to promote long-term stability for individuals and families by offering opportunities for personal and professional growth.',
              ),
              SizedBox(height: 16),
              ElevatedCard(
                icon: Icons.deblur,
                text: 'Raise Awareness and Advocate:',
                content:
                'We strive to raise awareness about homelessness and advocate for systemic changes to address its root causes.',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomInfoBar(),
    );
  }
}
