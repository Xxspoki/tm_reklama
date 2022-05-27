import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';

class AnimatedDot extends StatelessWidget {
  AnimatedDot({Key? key, this.active = false}) : super(key: key);
  final Map<bool, double> dotHeight = {
    true: 15,
    false: 7,
  };
  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      height: dotHeight[active],
      width: dotHeight[active],
      margin: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: kWhiteColor),
          shape: BoxShape.circle,
          color: active
              ? kBlackColor.withOpacity(0.8)
              : kBlackColor.withOpacity(0.3)),
    );
  }
}
