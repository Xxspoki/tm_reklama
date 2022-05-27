import 'package:flutter/material.dart';

class DashboardContainer extends StatelessWidget {
  final Widget child;
  const DashboardContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        // borderRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(AppDimension.borderRadiusLarge),
        //   topRight: Radius.circular(AppDimension.borderRadiusLarge),
        // ),
      ),
      clipBehavior: Clip.hardEdge,
      child: child,
    );
  }
}
