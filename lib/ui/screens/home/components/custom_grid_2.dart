import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';

final List<Map<String, String>> gridTitles = [
  {'name': 'Рестораны\nи кафе'},
  {'name': 'Красота\nи здоровье'},
  {'name': 'Магазины'},
  {'name': 'Развлечение\nи отдых'},
];

final List<Map<String, Image>> gridImages = [
  {
    'image':
        Image.asset('assets/images/meal.jpg', fit: BoxFit.fitHeight, height: 50)
  },
  {
    'image': Image.asset('assets/images/health.jpg',
        fit: BoxFit.fitHeight, height: 50)
  },
  {
    'image': Image.asset('assets/images/shopping.jpg',
        fit: BoxFit.fitHeight, height: 50)
  },
  {
    'image':
        Image.asset('assets/images/rest.jpg', fit: BoxFit.fitHeight, height: 50)
  },
];

class CustomGridBuilder2 extends StatelessWidget {
  const CustomGridBuilder2({Key? key, required this.controller})
      : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: controller,
      shrinkWrap: true,
      itemCount: gridTitles.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1.4),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            gradient: kPrimaryGradientColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: GridTile(
            child: Stack(children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    gridTitles[index]['name'].toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      color: kWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: gridImages[index]['image'],
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
