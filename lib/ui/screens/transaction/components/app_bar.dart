import 'package:flutter/material.dart';

AppBar buildApBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: MediaQuery.of(context).size.height / 16,
    title: const Center(
      child: Text(
        'Транзакции',
      ),
    ),
  );
}
