import 'package:flutter/material.dart';

AppBar buildApBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: true,
    toolbarHeight: MediaQuery.of(context).size.height / 16,
    title: const Text(
      'Обратная связь',
    ),
  );
}
