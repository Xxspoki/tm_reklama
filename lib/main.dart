import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
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

  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
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
  final customIconThemeColor = ThemeData().iconTheme.color;

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
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ),
          child: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            height: 55,
            backgroundColor: Colors.white,
            selectedIndex: currentIndex,
            animationDuration: const Duration(milliseconds: 400),
            onDestinationSelected: (index) =>
                setState(() => currentIndex = index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_outlined, color: Colors.amber),
                  selectedIcon: Icon(Icons.home, color: Colors.amber),
                  label: 'Home',
                  tooltip: ''),
              NavigationDestination(
                  icon: Icon(Icons.credit_card_off, color: Colors.amber),
                  selectedIcon: Icon(Icons.credit_card, color: Colors.amber),
                  label: 'Transaction',
                  tooltip: ''),
              NavigationDestination(
                  icon: Icon(CupertinoIcons.person, color: Colors.amber),
                  selectedIcon:
                      Icon(CupertinoIcons.person_fill, color: Colors.amber),
                  label: 'Profile',
                  tooltip: ''),
              NavigationDestination(
                  icon: Icon(CupertinoIcons.settings, color: Colors.amber),
                  selectedIcon:
                      Icon(CupertinoIcons.settings_solid, color: Colors.amber),
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
