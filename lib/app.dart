import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tm_reklama/const/app_routes.dart';
import 'package:tm_reklama/k_dark_theme.dart';
import 'package:tm_reklama/k_light_theme.dart';
import 'package:tm_reklama/ui/dashboard/dashboard_screen.dart';

class TmReklama extends StatelessWidget {
  const TmReklama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        enableLog: true,
        title: 'TmReklama',
        theme: LightThemeClass.lightTheme,
        darkTheme: DarkThemeClass.darkTheme,
        themeMode: ThemeMode.light,
        getPages: [
          GetPage(
            name: AppRoutes.defaultRoute,
            page: () => DashboardScreen(),
          ),
          // GetPage(
          //   name: AppRoutes.dashboardRoute,
          //   page: () => HomePage(),
          //   transition: Transition.fadeIn,
          // ),
        ]);
  }
}
