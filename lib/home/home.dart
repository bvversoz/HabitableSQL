// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../contact.dart';
import '../styles/resume_styling_classes.dart';
import 'bottom_bar.dart';
import 'mission_statement.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: ThemeData(
        primaryColor: Color(0xFFF6E3A4),
        hintColor: Colors.grey,
        // Bold Yellow
        scaffoldBackgroundColor: Color(0xFF4446A3),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFB2D3F1),
          foregroundColor: Colors.white,
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: Color(0xFFB2D3F1),
        ),
        iconTheme: IconThemeData(
          color: Color(0xFFF6E3A4),
          size: 24, // Set the default size for icons
        ),
        // hit: Color(0xFF0A2463), // Deep Blue
      ),
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Color(0xFFE95700),
          leading: IconButton(
            // tooltip: 'Open App Drawer',
            icon: Icon(Icons.menu),
            color: Color(0xFF4446A3),
            onPressed: () {},
          ),
          elevation: 4,
          shadowColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Move On Up',
                style: TextStyle(
                  letterSpacing: 4,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DancingScript',
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Color(0xFFF6E3A4),
                  shadows: [
                    Shadow(
                      blurRadius: 4,
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.trending_up_rounded,
                color: Color(0xFF313893),
              )
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
                  height: 200,
                  child: Stack(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Container(
                      //     height: 50,
                      //     decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //         image: AssetImage('cinci.png'),
                      //         fit: BoxFit.fill,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          alignment: Alignment.center,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: ContactMe(),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                MissionStatement(),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('cinci.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomInfoBar(),
      ),
    );
  }
}
