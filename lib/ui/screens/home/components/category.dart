import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';
import 'package:tm_reklama/ui/screens/find_and_earn/find_and_earn_screen.dart';
import 'package:tm_reklama/ui/screens/watch_and_earn/watch_and_earn_screen.dart';

List colors = [
  Colors.red[400],
  Colors.blue[400],
  Colors.yellow[400],
];

List navigationList = [
  WatchAndEarnScreen(),
  WatchAndEarnScreen(),
  const FindAndEarnScreen(),
];

List icons = const [
  Icon(
    Icons.webhook_rounded,
    size: 60,
    color: kWhiteColor,
  ),
  Icon(
    Icons.play_circle_fill_rounded,
    size: 60,
    color: kWhiteColor,
  ),
  Icon(
    Icons.search,
    size: 60,
    color: kWhiteColor,
  ),
];

List texts = const [
  Text(
    'Колесо\nфортуны',
    textAlign: TextAlign.center,
    style: TextStyle(color: kWhiteColor),
  ),
  Text(
    'Посмотри и\nзаработай',
    textAlign: TextAlign.center,
    style: TextStyle(color: kWhiteColor),
  ),
  Text(
    'Найди и\nзаработай',
    textAlign: TextAlign.center,
    style: TextStyle(color: kWhiteColor),
  ),
];

class CustomCategory extends StatelessWidget {
  const CustomCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 2.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (c, a1, a2) => navigationList[index],
                  transitionsBuilder: (c, anim, a2, child) =>
                      FadeTransition(opacity: anim, child: child),
                  transitionDuration: kAnimationDuration,
                ),
              )
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              width: MediaQuery.of(context).size.width / 3.2,
              decoration: BoxDecoration(
                color: colors[index],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: kTextColor.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Spacer(flex: 2),
                  icons[index],
                  const Spacer(),
                  texts[index],
                  const Spacer(flex: 2),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
