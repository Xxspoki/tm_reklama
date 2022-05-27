import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/screens/home/components/custom_carusel_add.dart';
import 'package:tm_reklama/ui/screens/home/components/category.dart';
import 'package:tm_reklama/ui/widgets/grey_text.dart';
import 'package:tm_reklama/ui/screens/home/components/custom_carusel_add_2.dart';
import 'package:tm_reklama/ui/screens/home/components/custom_grid.dart';
import 'package:tm_reklama/ui/screens/home/components/custom_grid_2.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        controller: _controller,
        children: [
          const SizedBox(height: 5),
          const CustomCaruselAdd(caruselHeight: 3.4),
          const SizedBox(height: 10),
          const GreyText(text: 'Категория заданий'),
          const SizedBox(height: 10),
          const CustomCategory(),
          const SizedBox(height: 10),
          const CustomCaruselAdd2(),
          CustomGridBuilder(controller: _controller),
          const SizedBox(height: 10),
          const GreyText(text: "Купоны и акции"),
          const SizedBox(height: 20),
          CustomGridBuilder2(controller: _controller),
          const SizedBox(height: 10),
          const CustomCaruselAdd(caruselHeight: 5),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
