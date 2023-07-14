// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MarkdownStyles {
  TextStyle heading1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'roboto',
  );

  TextStyle heading2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'roboto',
  );

  TextStyle heading3 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'roboto',
    // decoration: TextDecoration.underline,
  );

  TextStyle heading4 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'roboto',
  );

  TextStyle listTileTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'roboto',
    color: Colors.black,
  );

  TextStyle hard_soft = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.grey[600],
    fontFamily: 'roboto',
  );

  TextStyle bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'roboto',
  );

  TextStyle italic = TextStyle(
    fontStyle: FontStyle.italic,
    fontFamily: 'roboto',
  );

  TextStyle link = TextStyle(
    color: Colors.blue,
    fontFamily: 'roboto',
    // decoration: TextDecoration.underline,
    fontSize: 10,
  );

  TextStyle list = TextStyle(fontSize: 10, fontFamily: 'roboto', color: Colors.black);
  TextStyle redSnackBar = TextStyle(fontSize: 14, fontFamily: 'roboto', color: Colors.redAccent);

  TextStyle greyLink = TextStyle(
    fontSize: 11,
    fontFamily: 'roboto',
    color: Colors.grey,
  );
  TextStyle greyName = TextStyle(
    fontSize: 14,
    fontFamily: 'roboto',
    color: Colors.grey,
  );

  TextStyle code = TextStyle(
    fontFamily: 'Courier',
    backgroundColor: Colors.grey[300],
    fontSize: 14,
  );

  TextStyle whiteTitle = TextStyle(
    letterSpacing: 4,
    fontSize: 15,
    fontFamily: 'roboto',
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  TextStyle greenTitle = TextStyle(
    letterSpacing: 4,
    fontSize: 20,
    fontFamily: 'roboto',
    fontWeight: FontWeight.bold,
    color: Colors.green,
  );

  TextStyle whiteSubtitle = TextStyle(
    letterSpacing: 4,
    fontSize: 10,
    fontFamily: 'roboto',
    fontWeight: FontWeight.w100,
    color: Colors.white,
  );

  TextStyle whiteTruckFont = TextStyle(
    letterSpacing: 4,
    fontSize: 14,
    fontFamily: 'roboto',
    // fontStyle: Font,
    fontWeight: FontWeight.w100,
    color: Colors.white,
  );
  TextStyle whiteTabsText = TextStyle(
    letterSpacing: 4,
    fontSize: 14,
    fontFamily: 'roboto',
    fontWeight: FontWeight.w100,
    color: Colors.white,
  );

  TextStyle whiteResume = TextStyle(
    letterSpacing: 4,
    fontSize: 22,
    fontFamily: 'roboto',
    fontWeight: FontWeight.w100,
    color: Colors.white,
  );



  TextStyle homeTitle = TextStyle(
    letterSpacing: 4,
    fontSize: 25,
    fontFamily: 'roboto',
    // fontStyle: Font,
    // decoration: TextDecoration.underline,
    fontWeight: FontWeight.bold,
    color: Colors.grey[400],
  );
  TextStyle whiteTab = TextStyle(
    fontSize: 9,
    fontFamily: 'roboto',
    // fontStyle: Font,
    fontWeight: FontWeight.w100,
    color: Colors.white,
  );
  TextStyle tinyDark = TextStyle(
    fontSize: 11,
    fontFamily: 'roboto',
    letterSpacing: 2,
    fontWeight: FontWeight.w200,
    color: Colors.black54,
  );
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 4.0), // Added bottom padding
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.brightness_1,
            size: 3,
            color: Colors.black,
          ),
          SizedBox(width: 4.0), // Added some spacing between the icon and text
          Expanded(
            child: Text(
              text,
              style: MarkdownStyles().list,
            ),
          ),
        ],
      ),
    );
  }
}
