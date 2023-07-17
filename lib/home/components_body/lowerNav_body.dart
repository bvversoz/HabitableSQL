// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class LearnMoreButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/mission_learn_more');
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.grey, // Set the button color to white
        ),
        child: Text(
          'Learn More',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w100,
            color: Colors.white, // Set the text color to black
          ),
        ),
      ),
    );
  }
}



class ContactUsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
          Navigator.pushNamed(context, '/contact');
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // Change the button color to white
        ),
        child: Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w100,
            color: Colors.black, // Change the text color to black
          ),
        ),
      ),
    );
  }
}

class DonateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/donate');
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // Change the button color to white
        ),
        child: Text(
          'Donate',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w100,
            color: Colors.black, // Change the text color to black
          ),
        ),
      ),
    );
  }
}

class OrganizationalLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/organizational_logo');
        },
        style: TextButton.styleFrom(
          primary: Colors.white, // Change the button text color to white
        ),
        child: Text(
          'Organizational Logo',
          style: BottomTextStyle(),
        ),
      ),
    );
  }
}

class InformationalIntakeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/informational_intake_form');
        },
        style: TextButton.styleFrom(
          primary: Colors.white, // Change the button text color to white
        ),
        child: Text(
          'Informational Intake Form',
          style: BottomTextStyle()
        ),
      ),
    );
  }
}

class OrganizationalGoals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/organizational_goals');
        },
        style: TextButton.styleFrom(
          primary: Colors.white, // Change the button text color to white
        ),
        child: Text(
          'Organizational Goals',
          style: BottomTextStyle()
        ),
      ),
    );
  }
}

class PlansForFutureGrowth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/plans_for_future_growth');
        },
        style: TextButton.styleFrom(
          primary: Colors.white, // Change the button text color to white
        ),
        child: Text(
          'Plans for Future Growth',
          style: BottomTextStyle()
        ),
      ),
    );
  }
}

class PastProjectsAndCredibility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/past_projects_and_credibility');
        },
        style: TextButton.styleFrom(
          primary: Colors.white, // Change the button text color to white
        ),
        child: Text(
          'Past Projects and Credibility',
          style: BottomTextStyle()
        ),
      ),
    );
  }
}

class ServicesProvided extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/services_provided');
        },
        style: TextButton.styleFrom(
          primary: Colors.white, // Change the button text color to white
        ),
        child: Text(
          'Services Provided',
          style: BottomTextStyle()
        ),
      ),
    );
  }
}


class BottomTextStyle extends TextStyle {
  const BottomTextStyle()
      : super(
    letterSpacing: 2,
    fontSize: 15,
    fontWeight: FontWeight.w100,
    color: Colors.white,
  );
}
