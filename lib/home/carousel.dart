import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'components_body/lowerNav_body.dart';
import 'components_body/our_mission.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Garden View',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tech Interests'),
        ),
        body: SwiperWidget(),
      ),
    );
  }
}

final List<Widget> widgetList = [
  OurMission(),
  Container(
    color: Colors.blue,
  ),
  Container(
    color: Colors.green,
  ),
  Container(
    color: Colors.yellow,
  ),
];
class SwiperWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> titles = ['Our Mission', '', '', ''];

    List<Icon> icons = [
      Icon(Icons.info_outline_rounded, color: Colors.white,),
      Icon(Icons.person),
      Icon(Icons.settings),
      Icon(Icons.favorite),
    ];

    return SizedBox(
      height: 500,
      child: Animate(
        effects: [
          FadeEffect(
            delay: Duration(seconds: 1),
            duration: Duration(seconds: 2),
          ),
        ],
        child: Swiper(
          autoplay: false,
          itemCount: widgetList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    elevation: 4,
                    shadowColor: Colors.black,
                    color: Color(0xFF9ECBF1),
                    child: ListTile(
                      leading: icons[index],
                      subtitle: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: widgetList[index],
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            LearnMoreButton(),
                          ),
                        ],
                      ),
                      title: Text(
                        '${titles[index]}',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              color: Colors.grey[400],
              activeColor: Colors.grey[800],
              size: 8,
              activeSize: 10,
              space: 5,
            ),
          ),
          control: SwiperControl(
            color: Colors.grey,
            iconNext: Icons.arrow_right,
            size: 25,
            iconPrevious: Icons.arrow_left,
          ),
        ),
      ),
    );
  }
}
