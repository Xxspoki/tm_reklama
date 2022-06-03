import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:tm_reklama/constants.dart';
import 'package:tm_reklama/core/providers/index.dart';
import 'package:tm_reklama/k_light_theme.dart';
import 'package:tm_reklama/ui/screens/home/home_screen.dart';
import 'package:tm_reklama/ui/screens/profile/profile_screen.dart';
import 'package:tm_reklama/ui/screens/setting/setting_screen.dart';
import 'package:tm_reklama/ui/screens/transaction/transaction_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );

  FlutterNativeSplash.remove();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const TransactonScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];
  final customIconTheme = ThemeData().iconTheme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: LightThemeClass.lightTheme,
      scrollBehavior: MyBehaviour(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.grey[200],
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(
                height: 0.8,
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            iconTheme: MaterialStateProperty.all(
                const IconThemeData(color: Colors.amber, size: 30)),
          ),
          child: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            height: 55,
            backgroundColor: kWhiteColor,
            selectedIndex: currentIndex,
            animationDuration: kAnimationDuration * 2,
            onDestinationSelected: (index) =>
                setState(() => currentIndex = index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Home',
                  tooltip: ''),
              NavigationDestination(
                  icon: Icon(Icons.credit_card_off),
                  selectedIcon: Icon(Icons.credit_card),
                  label: 'Transaction',
                  tooltip: ''),
              NavigationDestination(
                  icon: Icon(CupertinoIcons.person),
                  selectedIcon: Icon(CupertinoIcons.person_fill),
                  label: 'Profile',
                  tooltip: ''),
              NavigationDestination(
                  icon: Icon(CupertinoIcons.settings),
                  selectedIcon: Icon(CupertinoIcons.settings_solid),
                  label: 'Settings',
                  tooltip: ''),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBehaviour extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
