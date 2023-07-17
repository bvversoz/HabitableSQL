// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../WidgetsRouting/future_growth.dart';
import '../WidgetsRouting/organization_logos.dart';
import '../WidgetsRouting/organizational_goals.dart';
import '../WidgetsRouting/past_projects.dart';
import '../WidgetsRouting/services_provided.dart';
import '../contact.dart';
import '../styles/themes.dart';
import 'bottom_bar.dart';
import 'components_appbar/popup.dart';
import 'components_appbar/title.dart';
import 'components_body/body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/contact': (context) => ContactPage(),
        // '/organizational_logo': (context) => OrganizationalLogoPage(),
        '/mission_learn_more': (context) => OrganizationalLogoPage(),
        '/donate': (context) => OrganizationalLogoPage(),
        '/organizational_goals': (context) => OrganizationalGoalsPage(),
        '/plans_for_future_growth': (context) => PlansForFutureGrowthPage(),
        '/past_projects_and_credibility': (context) => PastProjectsAndCredibilityPage(),
        '/services_provided': (context) => ServicesProvidedPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: CustomTheme.getTheme(),
      home: Scaffold(
        appBar: AppBar(
          leading: CustomPopUpWidget(),
          automaticallyImplyLeading: false,
          elevation: 4,
          shadowColor: Colors.white,
          title: CustomAppBarTitle(title: 'Move On Up', icon: Icons.trending_up_rounded,),
        ),
        body: BodyHome(),
        bottomNavigationBar: BottomInfoBar(),
      ),
    );
  }
}
