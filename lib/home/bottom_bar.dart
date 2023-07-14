// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BottomInfoBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Get the current theme

    return BottomAppBar(
      child: Row(
        children: [

          Spacer(),
          IconButton(
            tooltip: 'Search',
            icon: Icon(Icons.search),
            color: Color(0xFF313893), // Use the icon color from the theme
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Favorite',
            icon: Icon(Icons.favorite),
            color: Color(0xFF313893), // Use the icon color from the theme
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
