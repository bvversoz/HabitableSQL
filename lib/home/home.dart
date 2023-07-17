// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../WidgetsRouting/Donate.dart';
import '../WidgetsRouting/future_growth.dart';
import '../WidgetsRouting/mission_learn_more.dart';
import '../WidgetsRouting/organizational_goals.dart';
import 'components_body/popup_menu_widgets/events_page.dart';
import 'components_body/popup_menu_widgets/past_projects.dart';
import '../WidgetsRouting/services_provided.dart';
import '../contact.dart';
import '../styles/themes.dart';
import 'bottom_bar.dart';
import 'components_appbar/popup.dart';
import 'components_appbar/title.dart';
import 'body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        /// Pop Up Menu
        '/projects': (context) => PastProjectsAndCredibilityPage(),
        '/events': (context) => EventsPage(),


        /// Bottom Navigation
        '/contact': (context) => ContactPage(),
        '/mission_learn_more': (context) => LearnMoreMissionsStatement(),
        '/donate': (context) => DonatePage(),
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
