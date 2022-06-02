import 'package:flutter/material.dart';

AppBar buildApBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: true,
    iconTheme: const IconThemeData(color: Colors.black54),
    toolbarHeight: MediaQuery.of(context).size.height / 16,
    elevation: 0.1,
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.grey[600],
      fontSize: 20,
    ),
    title: const Text(
      'Обратная связь',
    ),
  );
}
