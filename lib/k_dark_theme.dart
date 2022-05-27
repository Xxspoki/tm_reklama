import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tm_reklama/constants.dart';

class DarkThemeClass {
  static ThemeData darkTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: kBlackColor,
    colorScheme: const ColorScheme.dark(),
    appBarTheme: const AppBarTheme(
      backgroundColor: kBlackColor,
      elevation: 0.1,
      centerTitle: true,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
      iconTheme: IconThemeData(color: kWhiteColor),
      titleTextStyle: TextStyle(
        color: kTextSecondaryColor,
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
