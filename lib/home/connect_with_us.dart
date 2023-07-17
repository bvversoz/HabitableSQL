// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/styles/resume_styling_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../contact.dart';

class ConnectUs extends StatefulWidget {
  @override
  _ConnectUsState createState() => _ConnectUsState();
}

class _ConnectUsState extends State<ConnectUs> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Material(
            type: MaterialType.transparency,
            child:   Animate(
              effects: [
                FadeEffect(
                  delay: Duration(seconds: 2),
                  duration: Duration(seconds: 2),
                )
              ],
              child: Chip(
                elevation: 4,
                shadowColor: Colors.black,
                backgroundColor: Colors.white,
                label: TextButton(
                  style: TextButton.styleFrom(
                    primary: theme.primaryColor,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Join Us',
                        style: TextStyle(
                          fontFamily: 'DancingScript',
                          color: Color(0xFF313893),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.accessibility_new_outlined,
                        size: 20,
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: isVisible,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              shadowColor: Colors.white,
              color: Color(0xFF4446A3),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          splashRadius: 15,
                          icon: Icon(
                            Icons.arrow_upward,
                            size: 15,
                          ),
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              isVisible = false;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ConnectUsIcon(
                          icon: Icons.handshake_outlined,
                          color: Color(0xFFFF9B28),
                        ),
                        ConnectUsIcon(
                          icon: Icons.family_restroom,
                          color: Colors.lightBlueAccent,
                        ),
                        ConnectUsIcon(
                          icon: Icons.person_add,
                          color: Colors.lightGreenAccent,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(color: Colors.white, height: 1,),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SizedBox(
                        width: 180,
                        height: 150,
                        child: Text(
                          "Join us in making a difference! Visit our website to learn more and get involved.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            // letterSpacing: 2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ContactPage(),
                          ),
                        );
                      },
                      child: Text('Sign Up'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ConnectUsIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const ConnectUsIcon({
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: color,
        size: 20,
      ),
    );
  }
}
