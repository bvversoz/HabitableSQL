// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

class LearnMoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        FadeEffect(
          delay: Duration(seconds: 3),
          duration: Duration(seconds: 2),
        ),
      ],
      child: SizedBox(
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
              fontSize: 14,
              fontWeight: FontWeight.w100,
              color: Colors.white, // Set the text color to black
            ),
          ),
        ),
      ),
    );
  }
}

class ContactUsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        FadeEffect(
          delay: Duration(seconds: 2),
          duration: Duration(seconds: 2),
        ),
      ],
      child: SizedBox(
        height: 36,
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
              fontSize: 16,
              fontWeight: FontWeight.w100,
              color: Colors.black, // Change the text color to black
            ),
          ),
        ),
      ),
    );
  }
}

class DonateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        FadeEffect(
          delay: Duration(seconds: 2),
          duration: Duration(seconds: 2),
        ),
      ],
      child: SizedBox(
        height: 36,
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
              fontSize: 16,
              fontWeight: FontWeight.w100,
              color: Colors.black, // Change the text color to black
            ),
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
        child: Text('Informational Intake Form', style: BottomTextStyle()),
      ),
    );
  }
}

class ChristChurch extends StatelessWidget {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Get the current theme

    return SizedBox(
      height: 24,
      child: TextButton(
        onPressed: () => _launchURL('https://cincinnaticathedral.com/'),
        style: TextButton.styleFrom(
          primary: Colors.white, // Change the button text color to white
        ),
        child: Text(
          'Our Church',
          style: BottomTextStyle(),
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
        child: Text('Organizational Goals', style: BottomTextStyle()),
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
        child: Text('Future Growth', style: BottomTextStyle()),
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
        child: Text('Past Projects and Credibility', style: BottomTextStyle()),
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
        child: Text('Services Provided', style: BottomTextStyle()),
      ),
    );
  }
}

class BottomTextStyle extends TextStyle {
  const BottomTextStyle()
      : super(
          letterSpacing: 1,
          fontSize: 15,
          fontWeight: FontWeight.w100,
          color: Colors.black,
        );
}

class CustomButtonStyle {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.blue,
    // Change the button color to your desired color
    onPrimary: Colors.white,
    // Change the text color to white
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    padding: EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 24,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 4,
  );

  static ButtonStyle textButtonStyle = TextButton.styleFrom(
    primary: Colors.blue, // Change the text color to your desired color
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

class BottomSocialsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes the position of the shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Text(
          'SOCIAL',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w100,
            color: Colors.black,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}

class BottomFocusContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes the position of the shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Text(
          'ORGANIZATION',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w100,
            color: Colors.black,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
