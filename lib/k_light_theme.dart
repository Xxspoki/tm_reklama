import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tm_reklama/constants.dart';

class LightThemeClass {
  static ThemeData lightTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: kWhiteColor,
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(
      backgroundColor: kWhiteColor,
      elevation: 0.1,
      centerTitle: true,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
      iconTheme: IconThemeData(color: kBlackColor),
      titleTextStyle: TextStyle(
        color: kTextColor,
        fontSize: 20,
      ),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: kTextColor,
        fontSize: 18,
      ),
    ),
  );
}
