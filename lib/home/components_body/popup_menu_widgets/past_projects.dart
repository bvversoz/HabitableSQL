// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../bottom_bar.dart';
import '../../components_appbar/title.dart';

class PastProjectsAndCredibilityPage extends StatelessWidget {
  final List<String> pastProjects = [
    'Project A',
    'Project B',
    'Project C',
  ];

  final String credibilityText =
      'Move On Up is a reputable volunteering organization based in Cincinnati. Over the years, we have successfully completed various projects and initiatives, making a positive impact on the community. Our dedication to serving others and our commitment to excellence have earned us the trust and credibility of our partners, volunteers, and the community at large.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4446A3),
        title: CustomAppBarTitle(
          title: 'Projects',
          icon: Icons.construction_sharp,
        ),
      ),

      // AppBar(
      //   title: Text('Past Projects and Credibility'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Past Projects:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              itemCount: pastProjects.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.check),
                  title: Text(pastProjects[index]),
                );
              },
            ),
            SizedBox(height: 16),
            Text(
              'Credibility:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              credibilityText,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomInfoBar(),
    );
  }
}
