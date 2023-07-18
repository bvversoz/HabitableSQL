import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../styles/resume_styling_classes.dart';

class ExperienceChipLight extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback? onPressed;

  const ExperienceChipLight(this.label, {required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Animate(
        effects: [
          FadeEffect(
            delay: Duration(seconds: 1),
            duration: Duration(seconds: 2),
          ),
        ],
        child: Chip(
          elevation: 4,
          shadowColor: Colors.black,
          avatar: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(
              icon,
              color: Colors.black,
              size: 20,
            ),
          ),
          label: Text(label, style: MarkdownStyles().list,),
          backgroundColor: Colors.white,
          labelStyle: MarkdownStyles().list,
        ),
      ),
    );
  }
}
