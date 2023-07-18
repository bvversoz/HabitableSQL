// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomInfoBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Get the current theme
    void _launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      }
    }
    return BottomAppBar(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(width: 10,),
                InkWell(
                  onTap: () =>
                      _launchURL('https://cincinnaticathedral.com/about/'),
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: theme.primaryColorLight,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Spacer(),
          IconButton(
            tooltip: 'Search',
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          // IconButton(
          //   tooltip: 'Favorite',
          //   icon: Icon(Icons.favorite),
          //   color: Colors.white, // Use the icon color from the theme
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }
}
