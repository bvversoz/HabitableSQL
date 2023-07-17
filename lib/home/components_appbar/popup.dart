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
            'Projects',
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
    );
  }
}
