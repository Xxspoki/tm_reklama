import 'package:flutter/material.dart';

class DashboardBottomNavBar extends StatelessWidget {
  final List<dynamic> items;
  const DashboardBottomNavBar({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      decoration: BoxDecoration(
        color: Theme.of(context).bottomAppBarColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List<Widget>.from(items),
        ),
      ),
    );
  }
}
