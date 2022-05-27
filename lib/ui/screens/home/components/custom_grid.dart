import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';
import 'package:tm_reklama/ui/screens/leader_list/leader_list_screen.dart';

const navigationList = [
  LeaderListScreen(),
  LeaderListScreen(),
];

final List<Map<String, String>> gridTitles = [
  {'name': 'Ashgabat'},
  {'name': 'Доска лидеров'},
];

final List<Map<String, dynamic>> gridIcons = [
  {
    'icon': Row(
      children: const [
        Expanded(
            child: Icon(
          Icons.cloud_queue_rounded,
          size: 40,
          color: kBlueColor,
        )),
        Expanded(
          child: Text('20.92',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
        ),
      ],
    ),
  },
  {
    'icon': const Icon(
      Icons.leaderboard,
      size: 40,
      color: kPrimaryColor,
    )
  },
];

class CustomGridBuilder extends StatelessWidget {
  const CustomGridBuilder({Key? key, required this.controller})
      : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: controller,
      shrinkWrap: true,
      itemCount: gridTitles.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kTextSecondaryColor.withOpacity(0.3),
            ),
            margin: const EdgeInsets.all(12),
            child: GridTile(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 1,
                    child: Text(
                      gridTitles[index]['name'].toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(flex: 2, child: gridIcons[index]['icon']),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Expanded(
                    flex: 1,
                    child: Text(
                      "Подробнее",
                      style: TextStyle(color: kBlueColor),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
