// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/styles/resume_styling_classes.dart';
import 'package:flutter/material.dart';

class CustomPopUpWidget extends StatelessWidget {
  const CustomPopUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(
        Icons.toc_outlined,
        color: Colors.white,
      ),
      onSelected: (value) {
        switch (value) {
          case 'Home':
            Navigator.pushNamed(context, '/home');
            break;
          case 'Projects':
            Navigator.pushNamed(context, '/projects');
            break;
          case 'Events':
            Navigator.pushNamed(context, '/events');
            break;
          case 'What we do?':
            Navigator.pushNamed(context, '/what_we_do');
            break;
          case 'News':
            Navigator.pushNamed(context, '/news');
            break;
        }
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem<String>(
          value: 'Home',
          child: Text(
            'Home',
            style: MarkdownStyles().list,
          ),
        ),
        PopupMenuItem<String>(
          value: 'Projects',
          child: Text(
            'Projects',
            style: MarkdownStyles().list,
          ),
        ),
        PopupMenuItem<String>(
          value: 'Events',
          child: Text(
            'Events',
            style: MarkdownStyles().list,
          ),
        ),
        PopupMenuItem<String>(
          value: 'What we do?',
          child: Text(
            'What we do?',
            style: MarkdownStyles().list,
          ),
        ),
        PopupMenuItem<String>(
          value: 'News',
          child: Text(
            'News',
            style: MarkdownStyles().list,
          ),
        ),
      ],
    );
  }
}
