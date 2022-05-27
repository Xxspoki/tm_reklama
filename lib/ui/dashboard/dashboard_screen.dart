import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tm_reklama/ui/screens/home/home_screen.dart';
import 'package:tm_reklama/ui/screens/profile/profile_screen.dart';
import 'package:tm_reklama/ui/screens/setting/setting_screen.dart';
import 'package:tm_reklama/ui/screens/transaction/transaction_screen.dart';
import 'package:tm_reklama/ui/widgets/custom_navigator.dart';
import 'package:tm_reklama/ui/widgets/fade_indexed_stack.dart';
import '../../const/nested_navigation_ids.dart';
import '../../controller/dashboard_controller.dart';
import 'local_widgets/dashboard_bottom_nav.dart';
import 'local_widgets/dashboard_container.dart';

class DashboardScreen extends StatelessWidget {
  final DashboardController _dashboardController =
      Get.put(DashboardController());

  DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.white),
      child: Obx(() {
        int currentIndex = _dashboardController.currentIndex;
        return ColoredBox(
          color: Theme.of(context).bottomAppBarColor,
          child: SafeArea(
            top: false,
            child: Scaffold(
              body: WillPopScope(
                onWillPop: _dashboardController.onWillPop,
                child: Column(
                  children: [
                    Expanded(
                      child: DashboardContainer(
                        child: FadeIndexedStack(
                            index: currentIndex,
                            children: const [
                              CustomNavigator(
                                  initialRoute: HomeScreen(),
                                  nestedId: NestedNavigationIds.home),
                              CustomNavigator(
                                  initialRoute: TransactonScreen(),
                                  nestedId: NestedNavigationIds.balance),
                              CustomNavigator(
                                  initialRoute: ProfileScreen(),
                                  nestedId: NestedNavigationIds.profile),
                              CustomNavigator(
                                  initialRoute: SettingScreen(),
                                  nestedId: NestedNavigationIds.setting),
                              // CustomNavigator(
                              //     initialRoute: ProfileScreen(),
                              //     nestedId: NestedNavigationIds.profile),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: DashboardBottomNav(
                  onItemSelected: (pos) {
                    _dashboardController.updateCurrentIndex(pos);
                  },
                  currentIndex: currentIndex),
            ),
          ),
        );
      }),
    );
  }
}
