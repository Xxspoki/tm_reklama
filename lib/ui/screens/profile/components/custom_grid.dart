import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<Map<String, String>> gridTitles = [
  {'name': 'Просмотрено'},
  {'name': 'Посещено'},
  {'name': 'Подписки'},
  {'name': 'Мои призы'},
  {'name': 'Заработанно'},
];

const List<Map<String, Color>> gridColors = [
  {'color': Color.fromARGB(255, 255, 226, 122)},
  {'color': Color.fromARGB(255, 117, 168, 255)},
  {'color': Color.fromARGB(255, 255, 122, 122)},
  {'color': Color.fromARGB(255, 135, 255, 197)},
  {'color': Colors.green},
];

final List<Map<String, dynamic>> gridIcons = [
  {'icon': 'assets/icons/view-list.svg'},
  {'icon': 'assets/icons/person.svg'},
  {'icon': 'assets/icons/checked.svg'},
  {'icon': 'assets/icons/wheel.svg'},
  {'icon': 'assets/icons/earned-money.svg'},
];

final List<Map<String, dynamic>> gridTexts = [
  {'text': '8'},
  {'text': '0'},
  {'text': '0'},
  {'text': '0'},
  {'text': '0.80 TMT'},
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
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.4,
          // crossAxisSpacing: 8,
          mainAxisSpacing: 8),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: gridColors[index]['color'],
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                offset: Offset.infinite,
                blurRadius: 5,
              )
            ],
          ),
          margin: const EdgeInsets.all(10),
          child: GridTile(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Spacer(),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Spacer(flex: 4),
                            SvgPicture.asset(
                              gridIcons[index]['icon'],
                              color: Colors.white,
                              fit: BoxFit.fitHeight,
                              height: 30,
                            ),
                            const Spacer(),
                            Text(
                              gridTexts[index]['text'],
                              style: const TextStyle(color: Colors.white),
                            ),
                            const Spacer(flex: 4)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 1,
                  child: Text(
                    gridTitles[index]['name'].toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
