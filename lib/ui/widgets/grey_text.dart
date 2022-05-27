import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';

class GreyText extends StatelessWidget {
  const GreyText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final dynamic text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: const TextStyle(
            color: kTextColor,
            fontSize: kTextSize,
          ),
        ),
      ),
    );
  }
}
