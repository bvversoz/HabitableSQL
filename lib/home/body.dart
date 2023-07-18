// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/home/values_scrollable.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';
import 'carousel.dart';
import '../styles/button_classes.dart';
import 'chips_navigation.dart';
import 'organizers.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 220,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('volunteer_music.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.topLeft,
                    color: Colors.white.withOpacity(0.5),
                    child: ListTile(
                      leading: SizedBox(
                        width: 50,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('christ_church.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                      title: Text('Christ Church'),
                      subtitle: Text('Cathedral'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 20),
          Divider(
            color: Colors.white,
            height: 1,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExperienceChipLight(
                    'Events',
                    icon: Icons.calendar_month,
                    onPressed: () {
                      Navigator.pushNamed(context, '/events');
                    },
                  ),
                  ExperienceChipLight(
                    'Projects',
                    icon: Icons.volunteer_activism,
                    onPressed: () {
                      Navigator.pushNamed(context, '/projects');
                    },
                  ),
                  ExperienceChipLight(
                    'Growth',
                    icon: Icons.area_chart_outlined,
                    onPressed: () {
                      Navigator.pushNamed(context, '/plans_for_future_growth');
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.white,
                height: 1,
              ),
              /// The code snippet creates an instance of the SwiperWidget class,
              /// which is likely a widget used for implementing a swipe able interface in a user interface framework or library.
              SwiperWidget(),

              Divider(
                color: Colors.white,
                height: 1,
              ),

              SizedBox(height: 20),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // ConnectUs(),
                        ContactUsButton(),
                        SizedBox(
                          height: 10,
                        ),
                        DonateButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 100),
          Divider(
            color: Colors.grey,
            height: 1,
          ),
          AvatarRow(),
          SizedBox(
            height: 10,
          ),
          OrganizationValuesList(),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.white,
            height: 1,
          ),
          Container(
            color: Colors.grey[400],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      BottomFocusContainer(),
                      SizedBox(
                        height: 10,
                      ),
                      ChristChurch(),
                      OrganizationalGoals(),
                      PlansForFutureGrowth(),
                      ServicesProvided(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      BottomSocialsContainer(),
                      SizedBox(
                        height: 10,
                      ),
                      SocialWidget(
                        placeholderText: 'linkedIn',
                        iconData: SocialIconsFlutter.twitter,
                        iconColor: Colors.blueGrey,
                        iconSize: 15,
                        link: '',
                        placeholderStyle: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SocialWidget(
                        placeholderText: 'twitter',
                        iconData: SocialIconsFlutter.twitter,
                        iconColor: Colors.lightBlue,
                        iconSize: 15,
                        link: '',
                        placeholderStyle: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SocialWidget(
                        placeholderText: 'facebook',
                        iconData: SocialIconsFlutter.facebook_box,
                        iconColor: Colors.blueGrey,
                        iconSize: 15,
                        link: '',
                        placeholderStyle: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
