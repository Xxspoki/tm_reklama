import 'package:flutter/material.dart';

AppBar buildApBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: MediaQuery.of(context).size.height / 16,
    // backgroundColor: Colors.amberAccent,
    title: const Center(
      child: Text(
        'Настройки',
      ),
    ),
  );
}
