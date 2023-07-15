// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../contact.dart';
import '../styles/resume_styling_classes.dart';
import '../styles/themes.dart';
import 'bottom_bar.dart';
import 'connect_with_us.dart';
import 'mission_statement.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: CustomTheme.getTheme(),
      home: Scaffold(
        appBar: AppBar(
          leading: PopupMenuButton<String>(
            icon: Icon(
              Icons.toc_outlined,
              color: Colors.white,
            ),
            onSelected: (value) {},
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'Widget3',
                child: Text(
                  'Home',
                  style: MarkdownStyles().list,
                ),
              ),
              PopupMenuItem<String>(
                value: 'Widget4',
                child: Text(
                  'projects',
                  style: MarkdownStyles().list,
                ),
              ),
              PopupMenuItem<String>(
                value: 'Widget4',
                child: Text(
                  'Events',
                  style: MarkdownStyles().list,
                ),
              ),
              PopupMenuItem<String>(
                value: 'Widget4',
                child: Text(
                  'What we do?',
                  style: MarkdownStyles().list,
                ),
              ),
              PopupMenuItem<String>(
                value: 'Widget4',
                child: Text(
                  'News',
                  style: MarkdownStyles().list,
                ),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
          elevation: 4,
          shadowColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Move On Up',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DancingScript',
                    color: Colors.white,
                    letterSpacing: 2,
                    shadows: [
                      Shadow(
                        color: Color(0xFFEA9E18),
                        offset: Offset(4, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.trending_up_rounded,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            // color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 250,
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MissionStatement(),
                    ConnectUs(),
                  ],
                ),

                SizedBox(height: 350),
                /// This code snippet creates a row with two clickable text widgets. When clicked, each text widget opens a specific URL in a web browser if the URL can be launched.
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          const url = 'https://cincinnaticathedral.com/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                        child: Text(
                          'Christ Church',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          const url = 'https://cincinnaticathedral.com/about/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                        child: Text(
                          'About the Church',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     height: 50,
                //     decoration: BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage('cinci.png'),
                //         fit: BoxFit.fitHeight,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomInfoBar(),
      ),
    );
  }
}
