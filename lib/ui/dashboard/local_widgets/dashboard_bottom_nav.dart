import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:tm_reklama/ui/dashboard/local_widgets/dashboard_bottom_nav_bar.dart';
import 'package:tm_reklama/ui/dashboard/local_widgets/dashboard_bottom_nav_item.dart';

import '../consts/dashboard_navigation_index.dart';

class DashboardBottomNav extends StatelessWidget {
  final Function(int)? onItemSelected;
  final int currentIndex;
  const DashboardBottomNav(
      {Key? key, this.onItemSelected, this.currentIndex = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardBottomNavBar(items: [
      DashboardBottomNavItem(
        value: DashboardNavigationIndex.home,
        groupValue: currentIndex,
        iconData: CupertinoIcons.house,
        tooltip: 'home'.tr,
        onTapped: () => _onItemTapped(DashboardNavigationIndex.home),
      ),
      DashboardBottomNavItem(
        value: DashboardNavigationIndex.balance,
        groupValue: currentIndex,
        iconData: Icons.credit_card,
        tooltip: 'balance'.tr,
        onTapped: () => _onItemTapped(DashboardNavigationIndex.balance),
      ),
      DashboardBottomNavItem(
        value: DashboardNavigationIndex.profile,
        groupValue: currentIndex,
        iconData: CupertinoIcons.person,
        tooltip: 'profile'.tr,
        onTapped: () => _onItemTapped(DashboardNavigationIndex.profile),
      ),
      DashboardBottomNavItem(
        value: DashboardNavigationIndex.setting,
        groupValue: currentIndex,
        iconData: CupertinoIcons.settings,
        tooltip: 'setting'.tr,
        onTapped: () => _onItemTapped(DashboardNavigationIndex.setting),
      ),
    ]);
  }

  _onItemTapped(int index) {
    onItemSelected!(index);
  }
}
