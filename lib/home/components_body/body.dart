import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../carousel.dart';
import '../connect_with_us.dart';
import '../mission_statement.dart';
import 'lowerNav_body.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
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
                      alignment: Alignment.bottomLeft,
                      color: Colors.white.withOpacity(0.5),
                      child: ListTile(
                        leading: SizedBox(
                          width: 50,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('brian.png'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        title: Text('Rev. Brian Blayer'),
                        subtitle: Text('Christ Church Cathedral'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.white,
              height: 1,
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SwiperWidget(),
                // MissionStatement(),
                SizedBox(height: 40),
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // ConnectUs(),
                      ContactUsButton(),
                      SizedBox(height: 10,),
                      DonateButton(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 350),
            Divider(
              color: Colors.white,
              height: 1,
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // OrganizationalLogo(),
                      OrganizationalGoals(),
                      PlansForFutureGrowth(),
                      ServicesProvided(),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactUsButton(),
                    SizedBox(height: 10,),
                    DonateButton(),

                  ],
                ),


              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
