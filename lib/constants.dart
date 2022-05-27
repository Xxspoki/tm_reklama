import 'package:flutter/material.dart';

const kPrimaryColor = Colors.amber;
const kPrimaryLightColor = Color.fromARGB(255, 241, 241, 241);

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color.fromARGB(255, 223, 141, 255),
    Color.fromARGB(255, 171, 183, 255)
  ],
);

const kWhiteColor = Color.fromARGB(225, 255, 255, 255);
const kBlackColor = Color.fromARGB(225, 0, 0, 0);

const kTextSecondaryColor = Color.fromARGB(255, 200, 200, 200);
const kTextColor = Color.fromARGB(255, 100, 100, 100);
const double kTextSize = 18;

const kBlueColor = Colors.blueAccent;
const kBlueGreyColor = Colors.blueGrey;

const kAnimationDuration = Duration(milliseconds: 200);

const headingStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: kBlackColor,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

const kDeafaultPadding = EdgeInsets.all(12);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: kTextColor),
  );
}
